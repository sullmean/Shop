package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.service.CategoryService;
import shop.service.ProductService;


@Controller
@RequestMapping(value = { "/", "/index" })
public class TrangChuController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String vieTrangChu(ModelMap modelMap) {
		modelMap.put("listCategory", categoryService.getAllcategory());
		modelMap.put("listProduct", productService.getProductRandom());
		return "index";
	}
	
//	value = { "/", "/index" },
//	@RequestMapping(value = "/product")
//	public String vieProduct() {
//		return "product";
//	}

	@RequestMapping(value = "/cart")
	public String vieCart() {
		return "cart";
	}

	@RequestMapping(value = "/detail")
	public String vieDetail() {
		return "detail";
	}

	@RequestMapping(value = "/checkout")
	public String vieCheckout() {
		return "checkout";
	}
}
