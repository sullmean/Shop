<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>thêm sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Thêm sản phẩm</h3>
			<form:form action="save" method="post" modelAttribute="newProductDto"
				enctype="multipart/form-data">
				<table width="95%">
					<tr>
						<td></td>
						<td style="color: red"><form:errors path="product.productId" /></td>
					</tr>
					<tr>
						<td><b>Tên sản phẩm:</b></td>
						<td><form:input class="panjang" path="product.productName" /></td>
					</tr>
					<tr>
						<td></td>
						<td style="color: red"><form:errors path="product.productName" /></td>
					</tr>

					<tr>
						<td><b>Danh mục: </b></td>
						<td><form:select path="product.category" class="panjang">
								<form:option value="" label="-- Chọn danh mục --" />
								<form:options items="${listCategory}" itemValue="categoryId"
									itemLabel="categoryName" />
							</form:select> <form:errors path="product.category"></form:errors></td>
					</tr>
					<tr>
						<td><b>Giá</b></td>
						<td><form:input class="pendek" path="product.price" /></td>
					</tr>
					<tr>
						<td></td>
						<td style="color: red"><form:errors path="product.price" /></td>
					</tr>
					<tr>
						<td><b>Mô tả</b></td>
						<td><form:textarea class="form-textarea" id="noiDung"
								path="product.decription" /> <script type="text/javascript"
								language="javascript">
									CKEDITOR.replace('noiDung', {
										width : '500px',
										height : '100px'
									});
								</script></td>
					</tr>
					<tr>
						<td width="125px"><b>Hình ảnh</b></td>
						<td><input type="file" value="Chọn tệp" class="button"
							name="files" /></td>
					</tr>
					<tr>
						<td></td>
						<td style="color: red"></td>
					</tr>
					<!--                 <tr> -->
					<!-- 					<td><b>Trạng thái: </b></td> -->
					<!-- 					<td > -->
					<%-- 						<form:select path="productState"> --%>
					<%-- 							<form:option value="" label="-- Chọn trạng thái --"/> --%>
					<%-- 							<form:option value="Trong kho" label="Trong kho"/> --%>
					<%-- 							<form:option value="hết hàng" label="Hết hàng"/> --%>
					<%-- 							<form:option value="không còn kinh doanh" label="không còn kinh doanh"/> --%>
					<%-- 						</form:select> --%>
					<!-- 					</td> -->
					<!-- 				</tr> -->
					<tr>
						<td><input type="submit" class="button" value="Lưu dữ liệu"></td>
					</tr>
				</table>
			</form:form>
		</div>

		<div class="clear"></div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>