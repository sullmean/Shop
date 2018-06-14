<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0&appId=140675323287238&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</head>
<body>

<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i>0967227342</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> thuyduyen2409@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/resources/images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
<%-- 							<c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
<%--   								<li>Xin chào: ${pageContext.request.userPrincipal.name}</li> --%>
<!--   								| &nbsp; -->
<%-- 							     <a href="${pageContext.request.contextPath}/logout">Logout</a> --%>
<!-- 								<sec:authorize  access="hasRole('ROLE_ADMIN')" > 	authorize: cho phép; authentication: xác thực; authorities: quyền; access: truy cập -->
<%-- 									<li><a href="${pageContext.request.contextPath}/admin"><i class="fa fa-shopping-cart"></i>Admin</a></li> --%>
<!-- 								</sec:authorize> -->
							     
						     
<%-- 						  	</c:if> --%>
								<li><a href="${pageContext.request.contextPath}/cart"><i class="fa fa-shopping-cart"></i>GIỎ HÀNG (${fn:length(sessionScope.cart.listOrderDetail) })</a></li>
								
								<li>
									<c:if test="${not empty sessionScope.user }">
										<a href="${pageContext.request.contextPath}/account/logout">
										Đăng Xuất
										</a>
										<c:if test="${sessionScope.user.role eq 'admin' }">
										<a href="${pageContext.request.contextPath}/admin">Admin</a>
										</c:if>
									</c:if>
									<c:if test="${empty sessionScope.user }">
									<a href="${pageContext.request.contextPath}/account" class="active">
										<i class="fa fa-lock"></i>ĐĂNG NHẬP
									</a>
									</c:if>
								</li>
								<c:if test="${not empty sessionScope.user }">
								<li>
									<a>
										${sessionScope.user.userName }
									</a>
								</li>
								</c:if>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="${pageContext.request.contextPath}/index">Trang Chủ</a></li>
								<li class="dropdown"><a href="#">Sản Phẩm<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <c:forEach var="item" items="${listCategory}">
											<li><a href="${pageContext.request.contextPath}/product/list?categoryID=${item.categoryId}">${item.categoryName }</a></li>
										</c:forEach> 
                                    </ul>
                                </li> 
								
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Tìm kiếm"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

</body>
</html>