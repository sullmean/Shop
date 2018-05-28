package shop.dto;

import org.springframework.web.multipart.MultipartFile;

import shop.entities.Product;

public class ProductDto {
	private Product product;
	private MultipartFile files;

	public ProductDto() {
		this.product = new Product();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public MultipartFile getFiles() {
		return files;
	}

	public void setFiles(MultipartFile files) {
		this.files = files;
	}

}
