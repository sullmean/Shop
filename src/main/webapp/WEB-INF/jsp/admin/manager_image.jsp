<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hình ảnh</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
		
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý hình ảnh</h3>
                    
                    <br/>
                    <a href="${root}/admin/manager_image/add" class="button">Thêm hình ảnh</a>
                    <table class="data">

                        <tr class="data">
                            <!-- <th class="data" width="30px">STT</th> -->
                            <th class="data">Mã hình</th>
                            <th class="data">Hình</th>
                            <th class="data">Sản phẩm</th>
                            <th class="data" width="90px">Tùy chọn</th>
                        </tr>
                        
						<c:forEach var="img" items="${listImage}">
                        
                        <tr class="data">
                            <td class="data">${img.imageId}</td>
                            <td class="data">
                            	<img src="${root}/resources/images/${img.url}" alt="">
                            </td> 
                            <td class="data">${img.product.getProductName()}</td>
                            <td class="data" width="90px">
                            <center>
                                <a href="${root}/admin/manager_image/update_image/${img.imageId}">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                <a href="<%-- /Shop/ManagerCategoryServlet?command=delete&category_id=<%=category.getMaLoai()%> --%>">Xóa</a>
                            </center>
                            </td>
                        </tr>
                       	</c:forEach>

                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>
