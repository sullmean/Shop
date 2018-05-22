package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.service.CategoryService;
import shop.service.ProductService;

@Controller
@RequestMapping(value = { "/", "/index" })
public class TrangChuController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	// view trang chủ
	@RequestMapping(method = RequestMethod.GET)
	public String vieTrangChu(ModelMap modelMap) {
		modelMap.put("listCategory", categoryService.getAllcategory());
		modelMap.put("listProduct", productService.getAllProduct());
		return "index";
	}

	// lấy ds sp theo mã danh mục
	@RequestMapping(value = "/product/list", method = RequestMethod.GET)
	public String getListProductByCategoryID(ModelMap mm, @RequestParam long categoryID) {
		mm.put("listProduct", productService.getProductByCategoryID(categoryID));
		mm.put("listCategory", categoryService.getAllcategory());
		return "product";
	}

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
