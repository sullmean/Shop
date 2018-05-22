
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
<title>quản lí sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Quản lí sản phẩm</h3>

			<br /> <a href="${root}/admin/manager_product/insert_product"
				class="button">Thêm sản phẩm</a>

			<table class="data">
				<tr class="data">
					<th class="data" width="50px">MSP</th>
					<th class="data" width="75px">Tên SP</th>
					<th class="data" width="75px">Danh mục</th>
					<th class="data" width="40px">Giá</th>
					<th class="data" width="160px">Mô tả</th>
					<th class="data">Hình ảnh</th>
					<th class="data">Trạng thái</th>
					<th class="data" width="90px">Tùy chọn</th>
				</tr>

				<c:forEach var="product" items="${listProduct}">

					<tr class="data">
						<td class="data">${product.productId}</td>
						<td class="data">${product.productName}</td>
						<td class="data">${product.category.getCategoryName()}</td>
						<td class="data">${product.price }</td>
						<td class="data">${product.decription }</td>
						<td class="data"><img
							src="<%-- ${root}/images/<%=sp.getHinhAnh()%>" alt="${root}/images/<%=sp.getHinhAnh()%> --%>"
							width="70px" height="70px" /></td>
						<td class="data">${product.productState==false?'đang bán':'không còn bán'}</td>
						<td class="data">
							<center>
								<a
									href="${root}/admin/manager_product/update_product/${product.productId}">Sửa</a>&nbsp;
								| &nbsp;&nbsp; <a
									href="${root}/admin/manager_product/delete_product?id=${product.productId}">Xóa</a>
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