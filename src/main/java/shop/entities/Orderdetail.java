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

@Entity
@Table(name = "orderdetail", catalog = "shop")
public class Orderdetail implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "orderDetailID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long orderDetailId;
	@OneToOne()
	@JoinColumn(name = "product")
	private Product product;
	@OneToOne()
	@JoinColumn(name = "order")
	private Order order;
	@Column(name = "totalPrice", precision = 10)
	private Float totalPrice;
	@Column(name = "quanity")
	private Integer quanity;

	public Orderdetail() {
	}

	public Orderdetail(long orderDetailId, Product product, Order order, Float totalPrice, Integer quanity) {
		this.orderDetailId = orderDetailId;
		this.product = product;
		this.order = order;
		this.totalPrice = totalPrice;
		this.quanity = quanity;
	}

	public long getOrderDetailId() {
		return this.orderDetailId;
	}

	public void setOrderDetailId(long orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Float getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getQuanity() {
		return this.quanity;
	}

	public void setQuanity(Integer quanity) {
		this.quanity = quanity;
	}

}
