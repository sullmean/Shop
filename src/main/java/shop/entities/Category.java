package shop.entities;
// Generated Apr 21, 2018 4:25:32 PM by Hibernate Tools 5.2.8.Final

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "category", catalog = "shop")
public class Category implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	@NotNull
	@Id
	@Column(name = "categoryID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long categoryId;
	@NotEmpty
	@Column(name = "categoryName")
	private String categoryName;
	@OneToMany(mappedBy = "category")
	private List<Product> listProduct;
	private boolean disabled;

	public Category() {
	}

	public Category(long categoryId, String categoryName, boolean disabled) {
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.listProduct = new ArrayList<Product>();
		this.disabled = disabled;
	}

	public long getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<Product> getListProduct() {
		return this.listProduct;
	}

	public void setListProduct(List<Product> listProduct) {
		this.listProduct = listProduct;
	}

	public boolean isDisabled() {
		return disabled;
	}

	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}
}
