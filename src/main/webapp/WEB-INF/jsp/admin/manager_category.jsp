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
        <title>Quản lý danh mục</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
		
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý danh mục</h3>
                    
                    <br/>
                    <a href="${root}/admin/insert_category" class="button">Thêm danh mục</a>
                    <table class="data">

                        <tr class="data">
                            <!-- <th class="data" width="30px">STT</th> -->
                            <th class="data">Mã danh mục</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data" width="90px">Tùy chọn</th>
                        </tr>
                        
						<c:forEach var="category" items="${listCategory}">
                        
                        <tr class="data">
                            <td class="data">${category.categoryId}</td>
                            <td class="data">${category.categoryName}</td> 
                            <td class="data" width="90px">
                            <center>
                                <a href="<%-- ${root}/admin/update_category.jsp?command=update&category_id=<%=category.getMaLoai()%> --%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
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
