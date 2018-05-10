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
			<h3>Quản lí tài khoản</h3>
			
			<br/>
			<a href="${root}/admin/manager_account/add" class="button">Thêm tài khoản</a>
			
			<table class="data">
				<tr class="data">
					<th class="data"  width="10px">Mã TK</th>
					<th class="data" width="100px">Họ tên</th>
					<th class="data" >Email</th>
					<th class="data" >Địa chỉ</th>
					<th class="data" width="100px">Phone</th>
					<th class="data"  width="70px">Quyền hạn</th>
					<th class="data" width="40px">Trạng thái</th>
				</tr>
				
				<c:forEach var="user" items="${listUser}">
				
				<tr class="data"> 
					<td class="data">${user.userId }</td>
					<td class="data">${user.userName }</td>
					<td class="data">${user.userEmail }</td>
					<td class="data">${user.address }</td>
					<td class="data">${user.phone }</td>
					<td class="data">${user.role }</td>
					<td class="data">${user.active }</td>
				</tr>
				
				</c:forEach>
				
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>