<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@page import="model.LoaiSP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiSPDAO"%>
<%@page import="dao.SanPhamDAO"%>
<%@page import="model.SanPham"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cập nhật sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		String tensperr = "", tendanhmucerr = "", soluongerr = "", giaerr = "", motaerr = "", hinhanherr = "";
		if(request.getParameter("tensperr")!=null){
			tensperr = (String) request.getParameter("tensperr");
		}
		if(request.getParameter("tendanhmucerr")!=null){
			tendanhmucerr = (String) request.getParameter("tendanhmucerr");
		}
		if(request.getParameter("soluongerr")!=null){
			soluongerr = (String) request.getParameter("soluongerr");
		}
		if(request.getParameter("giaerr")!=null){
			giaerr = (String) request.getParameter("giaerr");
		}
		if(request.getParameter("motaerr")!=null){
			motaerr = (String) request.getParameter("motaerr");
		}
		if(request.getParameter("hinhanherr")!=null){
			hinhanherr = (String) request.getParameter("hinhanherr");
		}
		SanPhamDAO spdao=new SanPhamDAO();
		LoaiSPDAO categoryDAO = new LoaiSPDAO();
		ArrayList<LoaiSP> listCategory = categoryDAO.getListLoaiSP();
		SanPham sp=spdao.getSanPhamTheoMaSP(Long.parseLong(request.getParameter("masp")));
	%> --%>
	
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Cập nhật sản phẩm</h3>
			
			<form action="/Shop/ManagerProductServlet" method="post">
			<table width="95%">
				<tr>
					<td><b>Tên sản phẩm:</b></td>
					<td><input type="text" class="panjang" name="tensp" value="<%-- <%=sp.getTenSP()%> --%>"></td>
				</tr>
				<tr>
                        	<td></td>
                        	<td style=" color: red"><%-- <%=tensperr%> --%></td>
                </tr>
				<tr>
					<td><b>Danh mục: </b></td>
					<td><select name="tendanhmuc">
							<option selected>-- Chọn danh mục --</option>
							<%-- <%
                            	for(LoaiSP category : listCategory){
                			%> --%>
							<option value="<%-- <%=category.getMaLoai()%> --%>" ><%-- <%=category.getTenLoai()%> --%></option>
							<%-- <%}%> --%>
					</select></td>
				</tr>
				<tr>
					<td width="125px"><b>Số lượng</b></td>
					<td>
						<input type="text" class="pendek" name="soluong" value="<%-- <%=sp.getSoLuong()%> --%>">
					</td>
				</tr>
				<tr>
					<td><b>Giá</b></td>
					<td><input type="text" class="pendek" name="gia" value="<%-- <%=sp.getGia()%> --%>"></td>
				</tr>
				<tr>
					<td><b>Mô tả</b></td>
					<td><textarea name="mota"><%-- <%=sp.getMoTa()%> --%></textarea></td>
				</tr>
				<tr>
					<td width="125px"><b>Hình ảnh</b></td>
					<td>
						<input type="file" value=" Chọn tệp " class="button" name="hinhanh"/>
					</td>
				</tr>
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
						<input type="hidden" name="command" value="update">
                        <input type="hidden" name="masp" value="<%-- <%=request.getParameter("masp")%> --%>">
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