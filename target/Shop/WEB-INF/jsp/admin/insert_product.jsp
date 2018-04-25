<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="model.LoaiSP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiSPDAO"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>thêm sp</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<%-- <%
		String tensperr = "", tendanhmucerr = "", soluongerr = "", giaerr = "", motaerr = "", hinhanherr = "";
        if(request.getAttribute("tensperr")!=null){
        	tensperr = (String) request.getAttribute("tensperr");
        }
    	if(request.getAttribute("tendanhmucerr")!=null){
        	tendanhmucerr = (String) request.getAttribute("tendanhmucerr");
        }
        if(request.getAttribute("soluongerr")!=null){
        	soluongerr = (String) request.getAttribute("soluongerr");
        }
        if(request.getAttribute("giaerr")!=null){
        	giaerr = (String) request.getAttribute("giaerr");
        }
        if(request.getAttribute("motaerr")!=null){
        	motaerr = (String) request.getAttribute("motaerr");
        }
        if(request.getAttribute("hinhanherr")!=null){
        	hinhanherr = (String) request.getAttribute("hinhanherr");
        }
        
        LoaiSPDAO categoryDAO = new LoaiSPDAO();
        ArrayList<LoaiSP> listCategory = categoryDAO.getListLoaiSP();
        
    %> --%>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="wrapper">

		<jsp:include page="menu.jsp"></jsp:include>

		<div id="rightContent">
			<h3>Thêm sản phẩm</h3>
			<form action="/Shop/ManagerProductServlet"  method="post">
			<table width="95%">
				<tr>
					<td><b>Tên sản phẩm:</b></td>
					<td><input type="text" class="panjang" name="tensp"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=tensperr%> --%></td>
                </tr>
                
				<tr>
					<td><b>Danh mục: </b></td>
					<td ><select name="tendanhmuc">
							<option selected >-- Chọn danh mục --</option>
							<%-- <%
                            	for(LoaiSP category : listCategory){
                			%>
							<option value="<%=category.getMaLoai()%>" ><%=category.getTenLoai()%></option>
							<%}%> --%>
					</select></td>
				</tr>
				
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=tendanhmucerr%> --%></td>
                </tr>
                 
				<tr>
					<td width="125px"><b>Số lượng</b></td>
					<td><input type="text" class="pendek" name="soluong"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=soluongerr%> --%></td>
                </tr>
				<tr>
					<td><b>Giá</b></td>
					<td><input type="text" class="pendek" name="gia"></td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=giaerr%> --%></td>
                </tr>
				<tr>
					<td><b>Mô tả</b></td>
					<td>
						<textarea class="form-textarea" id="noiDung" name="mota"></textarea>
						<script type="text/javascript" language="javascript">
						   CKEDITOR.replace('noiDung', {width: '500px',height: '100px'});
						</script>
					</td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=motaerr%> --%></td>
                </tr>
				<tr>
					<td width="125px"><b>Hình ảnh</b></td>
					<td>
						<input type="file" value=" Chọn tệp " class="button" name="hinhanh" />
					</td>
				</tr>
				<tr>
                     <td></td>
                     <td style=" color: red"><%-- <%=hinhanherr%> --%></td>
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
						<input type="hidden" name="command" value="insert">
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