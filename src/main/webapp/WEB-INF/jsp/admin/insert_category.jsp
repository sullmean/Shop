<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <h3>Thông tin danh mục</h3>
                    <form:form action="save" method="POST" commandName="newCategory">
                    <table width="95%">
                    	<tr>
                            <td style="float: right"><b>Mã danh mục:</b></td>
                            <td><form:input class="sedang" path="categoryId"/></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Tên danh mục:</b></td>
                            <td><form:input class="sedang" path="categoryName"/></td>
                        </tr>
                        <%-- <tr>
                        	<td></td>
                        	<td style=" color: red"><%=error%></td>
                        </tr> --%>
                        <tr>
                        	<td></td>
                        	<td>
                                <input type="submit" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                    </form:form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
