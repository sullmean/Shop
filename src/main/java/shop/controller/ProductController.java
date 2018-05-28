package shop.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.entities.OrderDetail;
import shop.entities.Product;
import shop.service.ProductService;

@Controller
@RequestMapping("/cart")
public class ProductController {
	@Autowired
	ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String cart(HttpSession session) {
		List<Product> cart = (List<Product>) session.getAttribute("cart");
		if (cart != null) {
			return "cart";
		}
		return "redirect:/";
	}

	@RequestMapping("addCart")
	public String addToCart(@RequestParam("productId") long id, HttpSession session) {
		Product product = productService.findProductById(id);
		if (product != null) {
			if (session.getAttribute("cart") == null) {
				session.setAttribute("cart", new ArrayList<OrderDetail>());
			}
			List<OrderDetail> cart = (List<OrderDetail>) session.getAttribute("cart");
			Optional<OrderDetail> prodPrevious = cart.stream().filter(pro -> {
				return pro.getProduct().getProductId() == id;
			}).findFirst();
			if (prodPrevious.isPresent()) {
				prodPrevious.get().setProduct(product);
				prodPrevious.get().setQuanity(prodPrevious.get().getQuantity() + 1);
			} else {
				cart.add(new OrderDetail(0, product, null, product.getPrice(), 1));
			}
		}
		return "redirect:/cart";
	}

	@GetMapping("deleteCart")
	public String deleteCart(@RequestParam("productId") long id, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			session.setAttribute("cart", new ArrayList<OrderDetail>());
		}
		List<OrderDetail> cart = (List<OrderDetail>) session.getAttribute("cart");
		Optional<OrderDetail> prodPrevious = cart.stream().filter(pro -> {
			return pro.getProduct().getProductId() == id;
		}).findFirst();
		if (prodPrevious.isPresent()) {
			cart.remove(prodPrevious.get());
		}
		return "redirect:/cart";
	}
}
