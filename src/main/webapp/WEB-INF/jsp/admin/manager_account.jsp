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
<title>quản lí sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		TaiKhoanDAO taiKhoanDAO = new TaiKhoanDAO();
        ArrayList<TaiKhoan> listAccount = taiKhoanDAO.getAllAccount(); 
    %> --%>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Quản lí tài khoản</h3>
			
			<br/>
			<a href="${root}/admin/insert_account.jsp" class="button">Thêm tài khoản</a>
			
			<table class="data">
				<tr class="data">
					<th class="data">Mã TK</th>
					<th class="data">Tên TK</th>
					<th class="data" >Email</th>
					<th class="data" width="20px">Mật khẩu</th>
					<th class="data">Quyền hạn</th>
					<th class="data" width="40px">Trạng thái</th>
				</tr>
				
				<%-- <%
                	for(TaiKhoan tk : listAccount){
                %> --%>
				
				<tr class="data"> 
					
					<td class="data"><%-- <%=tk.getMa_tai_khoan()%> --%></td>
					<td class="data"><%-- <%=tk.getTen_tai_khoan()%>< --%></td>
					<td class="data"><%-- <%=tk.getEmail()%> --%></td>
					<td class="data"><%-- <%=tk.getMat_khau()%> --%></td>
					<td class="data"><%-- <%=tk.getTen_Quyen()%> --%></td>
					<td class="data"><%-- <%=tk.isTinh_trang()%> --%></td>
				</tr>
				
				<%-- <%}%> --%>
				
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>