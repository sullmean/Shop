package shop.entities;
// Generated Apr 21, 2018 4:25:32 PM by Hibernate Tools 5.2.8.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user", catalog = "shop")
public class User implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "userID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long userId;
	@Column(name = "userName")
	private String userName;
	@Column(name = "userEmail")
	private String userEmail;
	@Column(name = "userPass")
	private String userPass;
	@Column(name = "active")
	private Boolean active;
	@Column(name = "role")
	private String role;
	@Column(name = "phone")
	private String phone;
	@Column(name = "address")
	private String address;

	public User() {
	}

	public User(long userId, String userName, String userEmail, String userPass, Boolean active, String role,
			String phone, String address) {
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPass = userPass;
		this.active = active;
		this.role = role;
		this.phone = phone;
		this.address = address;
	}

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPass() {
		return this.userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public Boolean getActive() {
		return this.active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
