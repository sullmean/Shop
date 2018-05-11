<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cart</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index">Trang Chủ</a></li>
				<li class="active">Giỏ Hàng</li>
			</ol>
		</div>
		<div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
					<tr class="cart_menu">
						<td class="image">Tên sản phẩm</td>
						<td class="description"></td>
						<td class="price">Giá</td>
						<td class="quantity">Số lượng</td>
						<td class="total">Tổng cộng</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="cart_product"><a href=""><img
								src="${pageContext.request.contextPath}/resources/images/cart/50_small.jpg" alt=""></a></td>
						<td class="cart_description">
							<h4>
								<a href="">Đầm hai dây</a>
							</h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>187.000 VND</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a> <input
									class="cart_quantity_input" type="text" name="quantity"
									value="1" autocomplete="off" size="2"> <a
									class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">187.000 VND</p>
						</td>
						<td class="cart_delete"><a class="cart_quantity_delete"
							href=""><i class="fa fa-times"></i></a></td>
					</tr>

					<tr>
						<td class="cart_product"><a href=""><img
								src="${pageContext.request.contextPath}/resources/images/cart/ao_hoa_beo_vang__ayv50-2_149k_-_quan_-_syv40_139k___1__small.jpg" alt=""></a></td>
						<td class="cart_description">
							<h4>
								<a href="">Áo hoa bèo vàng</a>
							</h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>145.000 VND</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a> <input
									class="cart_quantity_input" type="text" name="quantity"
									value="1" autocomplete="off" size="2"> <a
									class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">145.000 VND</p>
						</td>
						<td class="cart_delete"><a class="cart_quantity_delete"
							href=""><i class="fa fa-times"></i></a></td>
					</tr>
					<tr>
						<td class="cart_product"><a href=""><img
								src="${pageContext.request.contextPath}/resources/images/cart/đầm baby.jpg" alt=""></a></td>
						<td class="cart_description">
							<h4>
								<a href="">Đầm baby</a>
							</h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>196.000 VND</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a> <input
									class="cart_quantity_input" type="text" name="quantity"
									value="1" autocomplete="off" size="2"> <a
									class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">196.000 VND</p>
						</td>
						<td class="cart_delete"><a class="cart_quantity_delete"
							href=""><i class="fa fa-times"></i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</section>
	<!--/#cart_items-->

	<section id="do_action">
	<div class="container">
		<div class="heading">
			<p>Chọn nếu bạn có mã giảm giá hoặc điểm thưởng bạn muốn sử dụng hoặc muốn ước tính chi phí phân phối của mình.</p>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="chose_area">
					<ul class="user_option">
						<li><input type="checkbox"> <label>Sử dụng mã phiếu giảm giá</label></li>
						<li><input type="checkbox"> <label>Sử dụng phiêu quà tặng</label></li>
						
						<li class="single_field zip-field"><label>Địa chỉ email</label><p> <input
							type="text" placeholder="Vui lòng nhập địa chỉ email"></p></li>
							
						<li class="single_field zip-field"><label>Tên</label><p> <input
							type="text" placeholder="Họ Tên"></p></li>
							
						<li class="single_field zip-field"><label>Số điện thoại</label><p> <input
							type="text" placeholder="Vui lòng nhập SĐT"></p></li>
						
					</ul>
					<ul class="user_info">
						<li class="single_field"><label>Tỉnh/Thành Phố:</label> <select>
								<option>Hồ Chí Minh City</option>
								<option>Long AN</option>
								<option>Đồng Nai</option>
								<option>India</option>
								<option>Pakistan</option>
								<option>Ucrane</option>
								<option>Canada</option>
								<option>Dubai</option>
						</select></li>
						<li class="single_field"><label>Quận / Huyện:</label> <select>
								<option>Select</option>
								<option>Dhaka</option>
								<option>London</option>
								<option>Dillih</option>
								<option>Lahore</option>
								<option>Alaska</option>
								<option>Canada</option>
								<option>Dubai</option>
						</select></li>
						
						<li class="single_field zip-field"><label>Địa chỉ nhận hàng</label> <input
							type="text" placeholder="Vui lòng nhập địa chỉ"></li>
					</ul>
					<a class="btn btn-default update" href="">Nhận báo giá</a> <a
						class="btn btn-default check_out" href="">Tiếp tục</a>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="total_area">
					<ul>
						<li>Tổng sản phẩm<span>185.000 VND</span></li>
						<li>Thuế<span>0%</span></li>
						<li>Phí vận chuyển<span>Free</span></li>
						<li>Tổng tiền<span>$61</span></li>
					</ul>
					<a class="btn btn-default update" href="">Cập nhật</a> <a
						class="btn btn-default check_out" href="${pageContext.request.contextPath}/checkout">Kiểm tra</a>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--/#do_action-->

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>