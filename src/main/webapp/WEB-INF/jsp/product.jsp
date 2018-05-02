<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product</title>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
			
	<section id="slider"><!--slider-->
	
	<div class="container">
		<div class="row">
		
			<jsp:include page="menu.jsp"></jsp:include>

			<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
						<c:forEach var="item" items="${listProduct}">
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="${pageContext.request.contextPath}/resources/images/shop/55_large.jpg" alt="" />
										<h2> $ ${item.price} </h2>
										<p> ${item.productName}</p>
										<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									
								</div>
								
							</div>
						</div>
						
						</c:forEach>
						
						<div class="clear:both"></div>
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			
		</div>
	</div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>