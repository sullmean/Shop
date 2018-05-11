<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>slider</title>
</head>
<body>

	<section id="slider"><!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>Tự hào là thương hiệu thời trang giá rẻ đầu tiên tại Việt Nam.</h2>
								<a href="${pageContext.request.contextPath}/index"><button type="button" class="btn btn-default get">Xem thêm</button></a>
							</div>
							<div class="col-sm-6">
								<img src="${pageContext.request.contextPath}/resources/images/home/girl1.jpg" class="girl img-responsive"
									alt="" /> 
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>Tự hào là thương hiệu thời trang giá rẻ đầu tiên tại Việt Nam.</h2>
								<a href="${pageContext.request.contextPath}/index"><button type="button" class="btn btn-default get">Xem thêm</button></a>
							</div>
							<div class="col-sm-6">
								<img src="${pageContext.request.contextPath}/resources/images/home/girl2.jpg" class="girl img-responsive"
									alt="" /> 
							</div>
						</div>

						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>Tự hào là thương hiệu thời trang giá rẻ đầu tiên tại Việt Nam.</h2>
								<a href="${pageContext.request.contextPath}/index"><button type="button" class="btn btn-default get">Xem thêm</button></a>
							</div>
							<div class="col-sm-6">
								<img src="${pageContext.request.contextPath}/resources/images/home/girl3.jpg" class="girl img-responsive"
									alt="" /> 
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!--/slider-->

</body>
</html>