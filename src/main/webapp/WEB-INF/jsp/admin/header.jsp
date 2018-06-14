<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<link href="${root}/resources/css/mos-style.css" rel='stylesheet' type='text/css' />

<link href="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- Datatables -->
<link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
</head>
<body>
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