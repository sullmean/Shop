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
<title>thêm tk</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Thêm tài khoản</h3>
			
			<form:form action="${pageContext.request.contextPath }/admin/manager_account/save" method="POST" commandName="newUser">
			<table width="95%">
				<form:hidden path="userId"/>
				<tr>
					<td><b>Họ tên:</b></td>
					<td><form:input class="panjang" path="userName"/></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=tentkerr%> --%></td>
                </tr>
				
				<tr>
					<td width="125px"><b>Email: </b></td>
					<td><form:input  class="pendek" path="userEmail"/></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=emailtkerr%> --%></td>
                </tr>
				<tr>
					<td><b>Mật khẩu</b></td>
					<td><form:password  class="pendek" path="userPass"/></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=matkhautkerr%> --%></td>
                </tr>
                <tr>
					<td><b>Địa chỉ</b></td>
					<td><form:input  class="pendek" path="address"/></td>
				</tr>
				<tr>
					<td width="125px"><b>Số điện thoại: </b></td>
					<td><form:input  class="pendek" path="phone"/></td>
				</tr>
				<tr>
					<td><b>Trạng thái: </b></td>
					<td ><form:select path="active">
							<form:option value="0"  label="chưa kích hoạt"/>
							<form:option value="1" label="đã kích hoạt"/>
					</form:select></td>
				</tr>
				<tr>
					<td><b>Quyền hạn </b></td>
					<td ><form:select path="role">
							<form:option value="khách hàng"  label="khách hàng"/>
							<form:option value="admin" label="admin"/>
					</form:select></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" class="button" value="Lưu dữ liệu">
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