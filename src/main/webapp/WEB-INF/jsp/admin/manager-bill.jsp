<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quản lí đơn hàng</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>quản lí đơn hàng</h3>

			<table class="data">
				<tr class="data">
					<th class="data" width="30px">Mã hóa đơn</th>
					<th class="data" >User</th>
					<th class="data" >SĐT</th>
					<th class="data" >Tổng tiền</th>
					<th class="data" width="80px">Phương thức thanh toán</th>
					<th class="data" width="100px">Địa chỉ giao hàng</th>
					<th class="data" width="100px">Thời gian đặt hàng</th>
					<th class="data" width="65px">trạng thái</th>
					<th class="data" width="60px">Tùy Chọn</th>
				</tr>
				
				<c:forEach var="order" items="${listOrder}">
				
				<tr class="data">
						<td class="data" width="30px">${order.orderId}</td>
                		<td class="data">${order.user}</td>
                        <td class="data">${order.customerAddress}</td>
                        <td class="data">${order.customerPhone}</td>
                        <td class="data">${order.amount}</td>
                        <td class="data">${order.payment}</td>
                        <td class="data">${order.orderDate}</td>
                		<td class="data">${order.status}</td>
                        <td class="data" width="75px">
                 		<center>
			                 <a href="<%-- ${root}/admin/update_tthoadon.jsp?mahd=<%=hoaDon.getMaHD()%> --%>">Xác nhận</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			                 <a href="${root}/admin/manager_chiTiet/${order.orderId}">Xem</a>
		                </center>
	                 </td>
                 </tr>
                 
                </c:forEach>
                 
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>