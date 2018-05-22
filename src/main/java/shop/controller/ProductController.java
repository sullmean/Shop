package shop.controller;

import java.beans.PropertyEditorSupport;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.entities.Category;
import shop.entities.Product;
import shop.service.CategoryService;
import shop.service.ProductService;

@Controller
@RequestMapping(value = "/admin/manager_product")
public class ProductController {
	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(Category.class, "category", new PropertyEditorSupport() {
			@Override
			public void setAsText(String cateId) {
				try {
					Category category = categoryService.findCategoryById(Long.parseLong(cateId));
					setValue(category);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		});
	}

	// view trang qli sp
	@RequestMapping(method = RequestMethod.GET)
	public String vieManagerProduct(ModelMap mm) {
		mm.put("listProduct", productService.getAllProductAdmin());
		return "/admin/manager_product";
	}

	// thêm
	@RequestMapping(value = "/insert_product", method = RequestMethod.GET)
	public String insert_product(ModelMap mm) {
		mm.put("newProduct", new Product());
		mm.put("listCategory", categoryService.getAllcategory());
		return "/admin/insert_product";
	}

	// lưu
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(ModelMap mm, @ModelAttribute(value = "newProduct") @Valid Product product,
			BindingResult rs) {
		if (rs.hasErrors()) {
			return "/admin/insert_product";
		}
		productService.insertProduct(product);
		mm.put("listProduct", productService.getAllProductAdmin());
		return "/admin/manager_product";
	}

	// find
	@RequestMapping(value = "/update_product/{productId}", method = RequestMethod.GET)
	public String updateProduct(ModelMap mm, @PathVariable(value = "productId") long productId) {
		mm.put("product", productService.findProductById(productId));
		mm.put("listCategory", categoryService.getAllcategory());
		return "/admin/update_product";
	}

	// update1
	@RequestMapping(value = "/updateProduct1", method = RequestMethod.POST)
	public String updateProduct1(ModelMap mm, @ModelAttribute(value = "product") Product product) {
		productService.updateProduct(product);
		mm.put("listProduct", productService.getAllProductAdmin());
		return "/admin/manager_product";
	}

	// xóa sp
	@RequestMapping(value = "/delete_product", method = RequestMethod.GET)
	public String deleteProduct(@RequestParam long id, ModelMap mm) {
		Product product = productService.findProductById(id);
		if (product != null) {
			product.setProductState(true);
			productService.updateProduct(product);
		}
		mm.put("listProduct", productService.getAllProductAdmin());
		return "/admin/manager_product";
	}

}
