<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@page import="dao.TaiKhoanDAO"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
</head>
<body>
	<%-- <%
		TaiKhoanDAO tkdao=new TaiKhoanDAO();
		String ten_tai_khoan=tkdao.getTKByEmail(request.getParameter("email")).getTen_tai_khoan();
		String ten_quyen=tkdao.getTKByEmail(request.getParameter("email")).getTen_Quyen();
	%> --%>
	<div id="header">
		<div class="inHeader">
			<div class="mosAdmin">
				Xin chào, <%-- <%=ten_tai_khoan%> --%>
				| <a href="<%-- <%=request.getContextPath()%>/Logout --%>">Đăng xuất</a> | <a
					href="<%-- <%=request.getContextPath()%>/index.jsp?ten_quyen=<%=request.getParameter("ten_quyen")%> --%>">Shop</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>

</body>
</html>