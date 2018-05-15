<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm hình ảnh</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Thêm hình</h3>
			<form:form action="save" method="POST" commandName="newImage">
				<table width="95%">
					<tr>
						<td ><b>Mã hình:</b></td>
						<td>
							<form:input class="panjang" path="imageId" />
						</td>
					</tr>
					<tr>
						<td ><b>hình:</b></td>
						<td>
							<form:input type="file" value=" Chọn tệp " class="button" path="url" />
						</td>
					</tr>
					<%-- <tr>
						<td></td>
						<td style="color: red"><%=error%></td>
					</tr> --%>
					<tr>
					<td><b>Sản phẩm: </b></td>
					<td >
						<form:select path="product"  class="panjang">
							<%-- <form:option  value="" label="-- Chọn sản phẩm --"/> --%>
							<form:options items="${products}"  itemValue="value"  itemLabel="key"/>
						</form:select>
					</td>
				</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" class="button" value="Lưu">
						</td>
					</tr>
				</table>
			</form:form>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>
