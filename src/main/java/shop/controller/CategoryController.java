package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Category;
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

	// add
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String insertCategory(ModelMap mm) {
		mm.put("newCategory", new Category());
		return "/admin/insert_category";
	}

	// lưu
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCategory(ModelMap mm, @ModelAttribute(value = "newCategory") Category category) {
		categoryService.insertCategory(category);
		mm.put("listCategory", categoryService.getAllcategory());
		return "/admin/manager_category";
	}
}
