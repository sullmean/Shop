<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="model.TaiKhoan"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.TaiKhoanDAO"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>thêm tk</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		String tentkerr = "", emailtkerr = "", matkhautkerr = "";
        if(request.getAttribute("tentkerr")!=null){
        	tentkerr = (String) request.getAttribute("tentkerr");
        }
    	if(request.getAttribute("emailtkerr")!=null){
    		emailtkerr = (String) request.getAttribute("emailtkerr");
        }
        if(request.getAttribute("matkhautkerr")!=null){
        	matkhautkerr = (String) request.getAttribute("matkhautkerr");
        }
    %> --%>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Thêm tài khoản</h3>
			
			<form action="/Shop/TaiKhoanServlet" method="post">
			<table width="95%">
				<tr>
					<td><b>Họ tên:</b></td>
					<td><input type="text" class="panjang" name="tentk"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=tentkerr%> --%></td>
                </tr>
				
				<tr>
					<td width="125px"><b>Email: </b></td>
					<td><input type="text" class="pendek" name="emailtk"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=emailtkerr%> --%></td>
                </tr>
				<tr>
					<td><b>Mật khẩu</b></td>
					<td><input type="password" class="pendek" name="matkhautk"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=matkhautkerr%> --%></td>
                </tr>
				<tr>
					<td><b>Quyền hạn </b></td>
					<td ><select name="quyentk">
							<option value="khách hàng" selected>khách hàng</option>
							<option value="admin" >admin</option>
					</select></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="hidden" name="commandtk" value="them">
						<input type="submit" class="button" value="Lưu dữ liệu">
					</td>
				</tr>
			</table>
			</form>
		</div>

		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>