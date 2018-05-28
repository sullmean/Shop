package shop.entities;
// Generated Apr 21, 2018 4:25:32 PM by Hibernate Tools 5.2.8.Final

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "order", catalog = "shop")
public class Order implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "orderId", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long orderId;
	@OneToOne()
	@JoinColumn(name = "user")
	private User user;
	@Column(name = "customerAddress")
	private String customerAddress;
	@Column(name = "customerPhone")
	private String customerPhone;
	@Column(name = "amount", precision = 255, scale = 0)
	private Float amount;
	@Column(name = "payment")
	private String payment;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "orderDate", length = 19)
	private Date orderDate;
	@Column(name = "status")
	private String status;
	@OneToMany(mappedBy = "order")
	private List<OrderDetail> listOrderDetail;

	public Order() {
	}

	public Order(long orderId, User user, String customerAddress, String customerPhone, Float amount, String payment,
			Date orderDate, String status) {
		this.orderId = orderId;
		this.user = user;
		this.customerAddress = customerAddress;
		this.customerPhone = customerPhone;
		this.amount = amount;
		this.payment = payment;
		this.orderDate = orderDate;
		this.status = status;
		this.listOrderDetail = new ArrayList<OrderDetail>();
	}

	public long getOrderId() {
		return this.orderId;
	}

	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCustomerAddress() {
		return this.customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPhone() {
		return this.customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public Float getAmount() {
		return this.amount;
	}

	public void setAmount(Float amount) {
		this.amount = amount;
	}

	public String getPayment() {
		return this.payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<OrderDetail> getListOrderDetail() {
		return listOrderDetail;
	}

	public void setListOrderDetail(List<OrderDetail> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}
}
