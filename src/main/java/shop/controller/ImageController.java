package shop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Image;
import shop.entities.Product;
import shop.service.ImageService;
import shop.service.ProductService;

@Controller
@RequestMapping(value = "/admin/manager_image")
public class ImageController {

	@Autowired
	ImageService imageService;

	@Autowired
	ProductService productService;

	// view trang qli hình ảnh
	@RequestMapping(method = RequestMethod.GET)
	public String manage_image(ModelMap mm) {
		mm.put("listImage", imageService.getAllImage());
		return "/admin/manager_image";
	}

	// add
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String insertImage(ModelMap mm) {
		mm.put("newImage", new Image());
		Set<Map.Entry<String, Long>> products;
		ArrayList<Product> listProduct = productService.getAllProduct();
		Map<String, Long> mapProduct = new HashMap<String, Long>();
		if (listProduct != null && !listProduct.isEmpty()) {
			for (Product eachDepartment : listProduct) {
				if (eachDepartment != null) {
					mapProduct.put(eachDepartment.getProductName(), eachDepartment.getProductId());
				}
			}
		}
		products = mapProduct.entrySet();
		mm.put("products", products);
//		mm.put("listProduct", productService.getAllProduct());
		return "/admin/insert_image";
	}

	// lưu
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveImage(ModelMap mm, @ModelAttribute(value = "newImage") Image image) {
		imageService.insertImage(image);
		mm.put("listImage", imageService.getAllImage());
		return "/admin/manager_image";
	}

	// find
	@RequestMapping(value = "/update_image/{imageId}", method = RequestMethod.GET)
	public String updateImage(ModelMap mm, @PathVariable(value = "imageId") long imageId) {
		mm.put("image", imageService.findImageById(imageId));
		mm.put("listProduct", productService.getAllProduct());
		return "/admin/update_image";
	}

	// update1
	@RequestMapping(value = "/updateImage1", method = RequestMethod.POST)
	public String updateImage1(ModelMap mm, @ModelAttribute(value = "image") Image image) {
		imageService.updateImage(image);
		mm.put("listImage", imageService.getAllImage());
		return "/admin/manager_image";
	}
}
