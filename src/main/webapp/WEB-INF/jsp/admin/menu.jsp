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
<title>menu</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="<c:url value="/resources/css/mos-style.css"/>" rel="stylesheet"  />
</head>
<body>

	<div id="leftBar">
		<ul>
			<li><a href="${root}/ChartServlet">Trang chủ</a></li>
			<li><a href="${root}/admin/manager_category">Danh mục</a></li>
			<li><a href="${root}/admin/manager_product">Sản phẩm</a></li>
			<li><a href="${root}/admin/manager-bill">Hóa đơn</a></li>
			<li><a href="${root}/admin/manager_account">Tài khoản</a></li>
			<li><a href="${root}/admin/manager_image">Hình ảnh</a></li>
		</ul>
	</div>


</body>
</html>