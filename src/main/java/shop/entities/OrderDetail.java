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
public class OrderDetail implements java.io.Serializable {
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
	private Double totalPrice;
	@Column(name = "quantity")
	private Integer quantity;

	public OrderDetail() {
	}

	public OrderDetail(long orderDetailId, Product product, Order order, Double totalPrice, Integer quantity) {
		this.orderDetailId = orderDetailId;
		this.product = product;
		this.order = order;
		this.totalPrice = totalPrice;
		this.quantity = quantity;
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

	public Double getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuanity(Integer quantity) {
		this.quantity = quantity;
	}

}
