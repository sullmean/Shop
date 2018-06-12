<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cart</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/index">Trang Chủ</a></li>
					<li class="active">Giỏ Hàng</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<form:form action="${pageContext.request.contextPath }/cart/updateCart" method="post" modelAttribute="cart">
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
							<c:forEach var="item" items="${cart.listOrderDetail }" step="1" varStatus="i">
								<form:hidden path="listOrderDetail[${i.index }].product.price"/>
								<form:hidden path="listOrderDetail[${i.index }].product.productId"/>
								<form:hidden path="listOrderDetail[${i.index }].product.listImage[0].url"/>
								<tr>
									<td class="cart_product"><a href=""> <img
											width="100px" height="100px"
											src="${pageContext.request.contextPath}/resources/images?url=${item.product.listImage[0].url }"
											alt="">
									</a></td>
									<td class="cart_description">
										<h4>
											<a href="">${item.product.productName }</a>
										</h4>
										<p>Web ID: ${item.product.productId }</p>
									</td>
									<td class="cart_price">
										<p>${item.product.price }VND</p>
									</td>
									<td class="cart_quantity">
										<div class="cart_quantity_button">
											<form:input cssClass="cart_quantity_input"
												path="listOrderDetail[${i.index }].quantity" value="${item.quantity }"
												autocomplete="off" size="2"></form:input> 
										</div>
									</td>
									<td class="cart_total">
										<p class="cart_total_price">${item.product.price * item.quantity } VND</p>
									</td>
									<td class="cart_delete"><a class="cart_quantity_delete"
										href="${pageContext.request.contextPath }/cart/deleteCart?productId=${item.product.productId }"><i
											class="fa fa-times"></i></a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<div class="total_area">
						<ul>
							<li>Thuế<span>0%</span></li>
							<li>Phí vận chuyển<span>Free</span></li>
							<li>Tổng tiền<span>${cart.amount } VND</span></li>
						</ul>
						<input type="submit" value="Cập nhật"/>
					</div>
				</form:form>
				<form:form action="${pageContext.request.contextPath }/cart/updateCart?confirm" method="post" modelAttribute="cart">
					<input type="submit" value="Gửi đơn hàng"/>
				</form:form>
			</div>

		</div>

	</div>
	<!--/#cart_items-->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>