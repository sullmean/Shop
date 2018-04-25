package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shop.service.CategoryService;
import shop.service.ProductService;


@Controller
@RequestMapping(value = "/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "/list")
	public String getListProductByCategoryID(ModelMap mm, @RequestParam long categoryID) {
		mm.put("listProduct", productService.getProductByCategoryID(categoryID));
		mm.put("listCategory", categoryService.getAllcategory());
		return "product";
	}
}
