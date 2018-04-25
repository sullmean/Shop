<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@page import="model.LoaiSP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiSPDAO"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cập nhật trạng thái chi tiết</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Xác nhận đơn hàng</h3>
			<form action="/Shop/HoaDonServlet" method="post">
				<table width="95%" >
					
					<tr>
						<td style="float: right"><b>Trang thái đơn hàng:</b></td>
						<td><select name="trangthai">
							<option selected value="đang xử lí">Đang xử lí</option>
							<option value="hoàn thành">Hoàn thành</option>
							<option value="hủy" >Hủy</option>
					</select></td>
					</tr>
					
					<tr>
						<td></td>
						<td><input type="hidden" name="command1" value="xacnhan">
							<input type="hidden" name="mahd" value="<%-- <%=request.getParameter("mahd")%> --%>"> 
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
