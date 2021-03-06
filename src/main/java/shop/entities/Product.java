package shop.entities;
// Generated Apr 21, 2018 4:25:32 PM by Hibernate Tools 5.2.8.Final

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "product", catalog = "shop")
public class Product implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	@NotNull
	@Id
	@Column(name = "productID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long productId;
	@Column(name = "decription")
	private String decription;
	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Image> listImage;
	@NotEmpty
	@Column(name = "productName")
	private String productName;
	@NotNull
	@Column(name = "price", precision = 10)
	private Double price;
	@OneToOne()
	@JoinColumn(name = "category")
	private Category category;
	@Column(name = "productState")
	private boolean productState;

	public Product() {
	}

	public Product(long productId, String decription, String productName, Double price, Category category,
			boolean productState) {
		this.productId = productId;
		this.decription = decription;
		this.listImage = new ArrayList<Image>();
		this.productName = productName;
		this.price = price;
		this.category = category;
		this.productState = productState;
	}

	public long getProductId() {
		return this.productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getDecription() {
		return this.decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public List<Image> getListImage() {
		return this.listImage;
	}

	public void setListImage(List<Image> listImage) {
		this.listImage = listImage;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public boolean getProductState() {
		return this.productState;
	}

	public void setProductState(boolean productState) {
		this.productState = productState;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", decription=" + decription + ", listImage=" + listImage
				+ ", productName=" + productName + ", price=" + price + ", category=" + category + ", productState="
				+ productState + "]";
	}

}
