<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.SanPhamDAO"%> --%>
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
			SanPhamDAO sanPhamDAO = new SanPhamDAO();
            ArrayList<SanPham> listsp = sanPhamDAO.getAllSP(); 
    %> --%>

	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Quản lí sản phẩm</h3>
			
			<br/>
			<a href="${root}/admin/insert_product" class="button">Thêm sản phẩm</a>
			
			<table class="data">
				<tr class="data">
					<th class="data" width="50px">MSP</th>
					<th class="data" width="75px">Tên SP</th>
					<th class="data" width="75px">Danh mục</th>
					<th class="data" width="20px">Số lượng</th>
					<th class="data" width="40px">Giá</th>
					<th class="data" width="160px">Mô tả</th>
					<th class="data">Hình ảnh</th>
					<th class="data">Trạng thái</th>
					<th class="data" width="90px">Tùy chọn</th>
				</tr>
				
				<%-- <%
                	for(SanPham sp : listsp){
                %> --%>
				
				<tr class="data"> 
					<td class="data"><%-- <%=sp.getMaSP()%> --%></td>
					<td class="data"><%-- <%=sp.getTenSP()%> --%></td>
					<td class="data"><%-- <%=sp.getMaLoai()%> --%></td>
					<td class="data"><%-- <%=sp.getSoLuong()%> --%></td>
					<td class="data"><%-- <%=sp.getGia()%> --%></td>
					<td class="data"><%-- <%=sp.getMoTa()%> --%></td>
					<td class="data"><img src="<%-- ${root}/images/<%=sp.getHinhAnh()%>" alt="${root}/images/<%=sp.getHinhAnh()%> --%>" width="70px" height="70px"/></td> 
					<td class="data"><%-- <%=sp.getTrangThai()%> --%></td>
					<td class="data">
						<center>
							<a href="<%-- ${root}/admin/update_product.jsp?command=update&masp=<%=sp.getMaSP()%> --%>">Sửa</a>&nbsp; | &nbsp;&nbsp;
							<a href="<%-- ${root}/admin/delete_product.jsp?command=delete&masp=<%=sp.getMaSP()%> --%>">Xóa</a>
						</center>
					</td>
				</tr>
				<%-- <%}%> --%>
			</table>
		</div>
		<div class="clear"></div>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>

</body>
</html>