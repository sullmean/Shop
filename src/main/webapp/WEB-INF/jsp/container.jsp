<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>container</title>
</head>
<body>

	<div class="col-sm-9 padding-right">
		<div class="features_items">
			<!--features_items-->
			<h2 class="title text-center">Features Items</h2>
			
			<c:forEach var="item" items="${listProduct}">
			<div class="col-sm-4">
				<div class="product-image-wrapper">
					<div class="single-products">
						<div class="productinfo text-center">
<<<<<<< HEAD
							<a href="${pageContext.request.contextPath}/detail"><img src="${pageContext.request.contextPath}/resources/images/home/đầm chấm bi.jpg" alt="" /></a>
=======
							<a href="${pageContext.request.contextPath}/detail"><img src="${pageContext.request.contextPath}/resources/images/home/product1.jpg" alt="" /></a>
>>>>>>> d1252bf308d5dd74a2a0223f65ea9058f52d2721
							<h2> $ ${item.price} </h2>
							<p> ${item.productName}</p>
							<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			
		</div>
		<!--features_items-->

<!-- 		<div class="category-tab"> -->
			<!--category-tab-->
<!-- 			<div class="col-sm-12"> -->
<!-- 				<ul class="nav nav-tabs"> -->
<!-- 					<li class="active"><a href="#tshirt" data-toggle="tab">T-Shirt</a></li> -->
<!-- 					<li><a href="#blazers" data-toggle="tab">Blazers</a></li> -->
<!-- 					<li><a href="#sunglass" data-toggle="tab">Sunglass</a></li> -->
<!-- 					<li><a href="#kids" data-toggle="tab">Kids</a></li> -->
<!-- 					<li><a href="#poloshirt" data-toggle="tab">Polo shirt</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="tab-content"> -->
<!-- 				<div class="tab-pane fade active in" id="tshirt"> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="tab-pane fade" id="blazers"> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="tab-pane fade" id="sunglass"> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="tab-pane fade" id="kids"> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="tab-pane fade" id="poloshirt"> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="product-image-wrapper"> -->
<!-- 							<div class="single-products"> -->
<!-- 								<div class="productinfo text-center"> -->
<!-- 									<img -->
<%-- 										src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg" --%>
<!-- 										alt="" /> -->
<!-- 									<h2>$56</h2> -->
<!-- 									<p>Easy Polo Black Edition</p> -->
<!-- 									<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 										class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<!--/category-tab-->

<!-- 		<div class="recommended_items"> -->
			<!--recommended_items--> 
<!-- 			<h2 class="title text-center">recommended items</h2> -->

<!-- 			<div id="recommended-item-carousel" class="carousel slide" -->
<!-- 				data-ride="carousel"> -->
<!-- 				<div class="carousel-inner"> -->
<!-- 					<div class="item active"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend1.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend2.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend3.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="item"> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend1.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend2.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-sm-4"> -->
<!-- 							<div class="product-image-wrapper"> -->
<!-- 								<div class="single-products"> -->
<!-- 									<div class="productinfo text-center"> -->
<!-- 										<img -->
<%-- 											src="${pageContext.request.contextPath}/resources/images/home/recommend3.jpg" --%>
<!-- 											alt="" /> -->
<!-- 										<h2>$56</h2> -->
<!-- 										<p>Easy Polo Black Edition</p> -->
<!-- 										<a href="#" class="btn btn-default add-to-cart"><i -->
<!-- 											class="fa fa-shopping-cart"></i>Add to cart</a> -->
<!-- 									</div> -->

<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<a class="left recommended-item-control" -->
<!-- 					href="#recommended-item-carousel" data-slide="prev"> <i -->
<!-- 					class="fa fa-angle-left"></i> -->
<!-- 				</a> <a class="right recommended-item-control" -->
<!-- 					href="#recommended-item-carousel" data-slide="next"> <i -->
<!-- 					class="fa fa-angle-right"></i> -->
<!-- 				</a> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<!--/recommended_items-->

	</div>
	

</body>
</html>