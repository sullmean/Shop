<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
</head>
<body>
	<div class="col-sm-3">
		<div class="left-sidebar">

			<div class="brands_products">
				<h2>DANH MỤC SẢN PHẨM</h2>
				<!--brands_products-->
				<div class="brands-name">
					<ul class="nav nav-pills nav-stacked">
					
						<c:forEach var="item" items="${listCategory}">
							<li><a href="${pageContext.request.contextPath}/product/list?categoryID=${item.categoryId}">${item.categoryName }</a></li>
						</c:forEach>
						
					</ul>
				</div>
			</div> <!--/brands_products-->

		</div>
	</div>
</body>
</html>