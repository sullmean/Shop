package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.service.CategoryService;

@Controller
@RequestMapping(value = "/admin/manager_category")
public class CategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping(method = RequestMethod.GET)
	public String manage_category(ModelMap mm) {
		mm.put("listCategory", categoryService.getAllcategory());
		return "/admin/manager_category";
	}
}
