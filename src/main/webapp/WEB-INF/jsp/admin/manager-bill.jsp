<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="dao.HoaDonDAO"%>
<%@page import="dao.TaiKhoanDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.HoaDon"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quản lí đơn hàng</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		HoaDonDAO hoaDonDAO = new HoaDonDAO();
           ArrayList<HoaDon> listHD = hoaDonDAO.getListBill();
           TaiKhoanDAO taiKhoanDAO = new TaiKhoanDAO();
    %> --%>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>quản lí đơn hàng</h3>

			<table class="data">
				<tr class="data">
					<th class="data" width="30px">Mã hóa đơn</th>
					<th class="data" width="75px">Email</th>
					<th class="data">SĐT</th>
					<th class="data" width="20px">Tổng tiền</th>
					<th class="data" width="20px">Phương thức thanh toán</th>
					<th class="data" width="75px">Địa chỉ giao hàng</th>
					<th class="data" width="65px">Thời gian đặt hàng</th>
					<th class="data" >trạng thái</th>
					<th class="data" width="60px">Tùy Chọn</th>
				</tr>
				
				<%-- <%for(HoaDon hoaDon : listHD){%> --%>
				
				<tr class="data">
					<td class="data" width="30px"><%-- <%=hoaDon.getMaHD()%> --%></td>
                		<td class="data"><%-- <%=taiKhoanDAO.getTKByMaTK(hoaDon.getMa_tai_khoan()).getEmail()%> --%></td>
                		<td class="data"><%-- <%=hoaDon.getPhone()%>< --%>/td>
                        <td class="data"><%-- <%=hoaDon.getTongTien()%> --%></td>
                        <td class="data"><%-- <%=hoaDon.getPayment()%> --%></td>
                        <td class="data"><%-- <%=hoaDon.getDiaChi()%> --%></td>
                        <td class="data"><<%-- %=hoaDon.getThoiGian()%> --%></td>
                        <td class="data"><%-- <%=hoaDon.getTrangThai()%> --%></td>
                        <td class="data" width="75px">
                 		<center>
			                 <a href="<%-- ${root}/admin/update_tthoadon.jsp?mahd=<%=hoaDon.getMaHD()%> --%>">Xác nhận</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			                 <a href="<%-- ${root}/admin/manager_chiTiet.jsp?mahd=<%=hoaDon.getMaHD()%> --%>">Xem</a>
		                </center>
	                 </td>
                 </tr>
                 
                <%--  <%}%> --%>
                 
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>