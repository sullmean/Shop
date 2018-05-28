package shop.controller;

import java.beans.PropertyEditorSupport;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.dto.ProductDto;
import shop.entities.Category;
import shop.entities.Image;
import shop.entities.Product;
import shop.service.CategoryService;
import shop.service.ImageService;
import shop.service.ProductService;
import shop.utils.UploadFileUtils;

@Controller
@RequestMapping(value = "/admin/manager_product")
public class ProductControllerAdmin {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ImageService imageService;

	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(Category.class, "product.category", new PropertyEditorSupport() {
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
		for(Product p : productService.getAllProductAdmin()) {
			System.out.println(p.getListImage().size());
		}
		return "/admin/manager_product";
	}

	// thêm
	@RequestMapping(value = "/insert_product", method = RequestMethod.GET)
	public String insert_product(ModelMap mm) {
		mm.put("newProductDto", new ProductDto());
		mm.put("listCategory", categoryService.getAllcategory());
		return "/admin/insert_product";
	}

	// lưu
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute ProductDto newProductDto, ModelMap mm) {
		System.out.println(newProductDto.getProduct().getCategory());
		try {
			List<String> paths = UploadFileUtils.uploadFile(Arrays.asList(newProductDto.getFiles()));
			if(!paths.isEmpty()) {
				List<Image> images = new ArrayList<>();
				paths.forEach(path -> {
					Image image = new Image(0, path, newProductDto.getProduct());
					imageService.insertImage(image);
					images.add(image);
				});
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		productService.insertProduct(newProductDto.getProduct());
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
