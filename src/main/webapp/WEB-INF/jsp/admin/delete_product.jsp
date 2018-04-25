<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cập nhật trạng thái sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Cập nhật trạng thái sản phẩm</h3>
			
			<form action="/Shop/ManagerProductServlet" method="post">
			<table width="95%">
				<tr>
					<td><b>Trạng thái: </b></td>
					<td >
						<select name="trangthai">
							<option selected >-- Chọn trạng thái --</option>
							<option value="Trong kho" >Trong kho</option>
							<option value="hết hàng" >Hết hàng</option>
							<option value="đã xóa" >Đã xóa</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td></td> 
					<td>
						<input type="hidden" name="command" value="delete">
                        <input type="hidden" name="masp" value="<%=request.getParameter("masp")%>">
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