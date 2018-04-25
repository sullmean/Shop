<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="dao.ChiTietHDDAO"%>
<%@page import="dao.SanPhamDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ChiTietHD"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quản lí chi tiết đơn hàng</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		ChiTietHDDAO chiTietDAO = new ChiTietHDDAO();
		long mahd = Long.parseLong(request.getParameter("mahd"));
		ArrayList<ChiTietHD> listChiTiet = chiTietDAO.getListChiTietTheoMaHD(mahd);
		SanPhamDAO spdao=new SanPhamDAO();
	%> --%>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Xem chi tiết đơn hàng</h3>

			<table class="data">
				<tr class="data">
					<th class="data" width="30px">Mã chi tiết</th>
					<th class="data" width="75px">Mã hóa đơn</th>
					<th class="data" width="20px">Tên sản phẩm</th>
					<th class="data" width="20px">Hình</th>
					<th class="data" width="20px">Giá</th>
					<th class="data" width="75px">Số lượng</th>
				</tr>
				
				<%-- <%
					for (ChiTietHD chiTiet : listChiTiet) {
				%> --%>

				<tr class="data">
					<td class="data" width="30px"><%-- <%=chiTiet.getMaChiTiet()%> --%></td>
					<td class="data"><%-- <%=chiTiet.getMaHD()%> --%></td>
					<td class="data"><%-- <%=spdao.getSanPhamTheoMaSP(chiTiet.getMaSP()).getTenSP()%> --%></td>
					<td class="data"><img  src="<%-- ${root}/images/<%=spdao.getSanPhamTheoMaSP(chiTiet.getMaSP()).getHinhAnh()%> --%>" width="70px" height="70px"/> </td>
					<td class="data"><%-- <%=chiTiet.getGia()%> --%></td>
					<td class="data"><%-- <%=chiTiet.getSoLuong()%> --%></td>
				</tr>

				<%-- <%
					}
				%> --%>

			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>