package shop.entities;
// Generated Apr 21, 2018 4:25:32 PM by Hibernate Tools 5.2.8.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Image generated by hbm2java
 */
@Entity
@Table(name = "image", catalog = "shop")
public class Image implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "imageID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long imageId;
	@Column(name = "url")
	private String url;
	@OneToOne
	@JoinColumn(name = "product")
	private Product product;

	public Image() {
	}

	public Image(long imageId) {
		this.imageId = imageId;
	}

	public Image(long imageId, String url, Product product) {
		this.imageId = imageId;
		this.url = url;
		this.product = product;
	}

	public long getImageId() {
		return this.imageId;
	}

	public void setImageId(long imageId) {
		this.imageId = imageId;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
