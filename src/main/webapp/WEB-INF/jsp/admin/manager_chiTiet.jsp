<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quản lí chi tiết đơn hàng</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Xem chi tiết đơn hàng</h3>
			<br/>
			<table class="data" id="datatable-buttons">
				<thead>
					<tr class="data">
						<th class="data" width="30px">Mã chi tiết</th>
						<th class="data" width="75px">Hóa đơn</th>
						<th class="data" width="20px">Sản phẩm</th>
						<th class="data" width="75px">Số lượng</th>
						<th class="data" width="20px">Tổng giá</th>
					</tr>
				<thead>
				<tbody>
				<c:forEach var="orderDetail" items="${orderDetail}">

					<tr class="data">
						<td class="data" width="30px">${orderDetail.orderDetailId}</td>
						<td class="data">${orderDetail.order.getOrderId()}</td>
						<td class="data">${orderDetail.product.getProductName()}</td>
						<td class="data">${orderDetail.quanity}</td>
						<td class="data">${orderDetail.totalPrice}</td>
					</tr>

				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>