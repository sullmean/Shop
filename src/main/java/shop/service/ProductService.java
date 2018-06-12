package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ProductDAO;
import shop.entities.Product;

@Service
public class ProductService {
	@Autowired
	ProductDAO productDAO;

	// lấy danh sách sp theo mã danh mục
	public ArrayList<Product> getProductByCategoryID(long categoryID) {
		return productDAO.getProductByCategoryID(categoryID);
	}

	// lấy random 6 sp
	public ArrayList<Product> getProductRandom() {
		return productDAO.getproductRandom();
	}

	// get tất cả sp
	public ArrayList<Product> getAllProduct() {
		return productDAO.getAllProduct();
	}

	// thêm
	public Product insertProduct(Product product) {
		return productDAO.insertProduct(product);
	}

	// tìm sp theo mã sp
	public Product findProductById(long productId) {
		return productDAO.findProductByID(productId);
	}

	// update sp
	public boolean updateProduct(Product product) {
		return productDAO.updateProduct(product);

	}

	public ArrayList<Product> getAllProductAdmin() {
		return productDAO.getAllProductAdmin();
	}
}
