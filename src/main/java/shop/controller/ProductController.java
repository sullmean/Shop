package shop.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.entities.Order;
import shop.entities.OrderDetail;
import shop.entities.Product;
import shop.entities.User;
import shop.service.OrderService;
import shop.service.ProductService;

@Controller
@RequestMapping("/cart")
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	OrderService orderService;

	@RequestMapping(method = RequestMethod.GET)
	public String cart(HttpSession session, ModelMap model) {
		Order cart = (Order) session.getAttribute("cart");
		if (cart != null && cart.getListOrderDetail().size() > 0) {
			model.put("cart", cart);
			return "cart";
		}
		session.setAttribute("cart", cart);
		return "redirect:/";
	}

	@RequestMapping("addCart")
	public String addToCart(@RequestParam("productId") long id, HttpSession session, ModelMap model) {
		Product product = productService.findProductById(id);
		Order cart = null;
		if (product != null) {
			if (session.getAttribute("cart") == null) {
				session.setAttribute("cart", new Order());
			}
			cart = (Order) session.getAttribute("cart");
			Optional<OrderDetail> prodPrevious = cart.getListOrderDetail().stream().filter(pro -> {
				return pro.getProduct().getProductId() == id;
			}).findFirst();

			if (prodPrevious.isPresent()) {
				prodPrevious.get().setProduct(product);
				prodPrevious.get().setQuantity(prodPrevious.get().getQuantity() + 1);
			} else {
				cart.getListOrderDetail().add(new OrderDetail(0, product, null, product.getPrice(), 1));
			}

			Double totalPrice = 0D;
			for (OrderDetail orderDetail : cart.getListOrderDetail()) {
				totalPrice += orderDetail.getTotalPrice();
			}
			cart.setAmount(totalPrice);
			session.setAttribute("cart", cart);
		}
		model.put("cart", cart);
		return "redirect:/cart";
	}

	@GetMapping("deleteCart")
	public String deleteCart(@RequestParam("productId") long id, HttpSession session, ModelMap model) {
		if (session.getAttribute("cart") == null) {
			session.setAttribute("cart", new Order());
		}

		Order cart = (Order) session.getAttribute("cart");
		Optional<OrderDetail> prodPrevious = cart.getListOrderDetail().stream().filter(pro -> {
			return pro.getProduct().getProductId() == id;
		}).findFirst();
		if (prodPrevious.isPresent()) {
			cart.getListOrderDetail().remove(prodPrevious.get());
		}
		model.put("cart", cart);
		return "redirect:/cart";
	}

	@PostMapping("updateCart")
	public String updateCart(@RequestParam(required = false) String confirm, @ModelAttribute Order cart,
			HttpSession session, ModelMap model) {
		if (confirm != null) {
			User user = (User) session.getAttribute("user");
			if (user != null) {
				Order orderConfirm = (Order) session.getAttribute("cart");
				orderConfirm.setUser(user);
				session.setAttribute("cart", new Order());
				orderService.save(orderConfirm);
				return "redirect:/";
			} else {
				return "redirect:/account";
			}
		}
		List<OrderDetail> orderDetails = new ArrayList<>();
		double orderTotalPrice = 0;
		for (OrderDetail orderDetail : cart.getListOrderDetail()) {
			if (orderDetail.getQuantity() > 0) {
				double totalPrice = orderDetail.getProduct().getPrice() * orderDetail.getQuantity();
				orderDetail.setTotalPrice(totalPrice);
				orderTotalPrice += totalPrice;
				orderDetails.add(orderDetail);
			}
		}
		cart.setListOrderDetail(orderDetails);
		cart.setAmount(orderTotalPrice);
		session.setAttribute("cart", cart);
		model.put("cart", cart);
		return "redirect:/cart";
	}
}
