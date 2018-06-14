<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login, register</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section id="form"><!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					<!--login form-->
					<h2>ĐĂNG NHẬP</h2>
					${error }
					<form:form action="${pageContext.request.contextPath }/account/login" modelAttribute ="user"  method= "post">
						<form:input path= "userEmail" placeholder="Email" /> 
						<form:password path= "userPass" placeholder="PassWord" /> <span> 
						<input type="checkbox" class="checkbox"> Lưu đăng nhập
						</span>
						<button type="submit" class="btn btn-default">ĐĂNG NHẬP</button>
						<a href=""><p>Quên mật khẩu</p></a>
					</form:form>
					<%-- <font color="red">
						<span>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
					</font> --%>
				</div>
				<!--/login form-->
			</div>
			<div class="col-sm-1">
				<h2 class="or">HOẶC</h2>
			</div>
			<div class="col-sm-4">
				<div class="signup-form">
					<!--sign up form-->
					<h2>ĐĂNG KÝ</h2>
					<form:form action="${pageContext.request.contextPath }/account/new" modelAttribute="user" method="post">
						<form:input path="userName" placeholder="TÊN" /> 
						<form:input path="userEmail" placeholder="Địa chỉ email" />
						<form:password path="userPass" placeholder="Mật khẩu" />
						<button type="submit" class="btn btn-default">ĐĂNG KÝ</button>
						<a href="${pageContext.request.contextPath}/index"><p>Quay lại trang chủ</p></a>
					</form:form>
				</div>
				<!--/sign up form-->
			</div>
		</div>
	</div>
	</section>
	<!--/form-->

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>