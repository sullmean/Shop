<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
    </head>
    <body>
		
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý danh mục</h3>
                    
                    <br/>
                    <a href="${root}/admin/manager_category/add" class="button">Thêm danh mục</a><br/>
                    <table class="data" id="datatable-buttons">
                    	<thead>
                        <tr class="data">
                            <!-- <th class="data" width="30px">STT</th> -->
                            <th class="data">Mã danh mục</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data">Trạng thái</th>
                            <th class="data" width="90px">Tùy chọn</th>
                        </tr>
                        </thead>
                        <tbody>
						<c:forEach var="category" items="${listCategory}">
                        
                        <tr class="data">
                            <td class="data">${category.categoryId}</td>
                            <td class="data">${category.categoryName}</td> 
                            <td class="data">${category.disabled==false?'đang kinh doanh':'không còn kinh doanh'}</td> 
                            <td class="data" width="90px">
                            <center>
                                <a href="${root}/admin/manager_category/update_category/${category.categoryId}">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                <a href="${root}/admin/manager_category/delete?id=${category.categoryId}">Xóa</a>
                            </center>
                            </td>
                        </tr>
                       	</c:forEach>
						</tbody>
						
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>
