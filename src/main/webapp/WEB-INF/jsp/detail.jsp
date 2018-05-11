<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>detai</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="slider"><!--slider-->

	<div class="container">
		<div class="row">

			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<a href=""><img
								src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__large.jpg"
								alt=""></a>
						</div>
						<div id="similar-product" class="carousel slide"
							data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___1__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a>
										<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a>
										
								</div>
								<div class="item">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___1__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___1__small.jpg"
										alt=""></a>
										<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a>
								</div>
								<div class="item">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___1__small.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a>
										<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/dam_do_beo_tay_dai_-_dk275__189k___2__small.jpg"
										alt=""></a>
								</div>

							</div>

							<!-- Controls -->
							<a class="left item-control" href="#similar-product"
								data-slide="prev"> <i class="fa fa-angle-left"></i>
							</a> <a class="right item-control" href="#similar-product"
								data-slide="next"> <i class="fa fa-angle-right"></i>
							</a>
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<a href=""><img
								src="${pageContext.request.contextPath}/resources/images/product-details/new.jpg"
								class="newarrival" alt="" /></a>
							<h2>ĐẦM ĐỎ BÈO TAY DÀI</h2>
							
							<img
								src="${pageContext.request.contextPath}/resources/images/product-details/rating.png"
								alt="" /> <span> <span>145.000VND</span> <label>Số Lượng:</label>
								<input type="text" value="3" />
								<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
							</span>
							<p>
								<b>Hàng:</b> Mới
							</p>
							<a href=""><img
								src="${pageContext.request.contextPath}/resources/images/product-details/share.png"
								class="share img-responsive" alt="" /></a>
						</div>
						<!--/product-information-->
					</div>
				</div>
				<!--/product-details-->

				<div class="category-tab shop-details-tab">
					<!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li><a href="" data-toggle="tab">Chi tiết sản phẩm</a></li>

						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade" id="details">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/51_large.jpg"
												alt="" /></a>
											<h2>245.000 VND</h2>
											<p>Đầm hai dây</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_voan_yem-dwv79_229k___2__large.jpg"
												alt="" /></a>
											<h2>229.000 VND</h2>
											<p>Đầm voan yếm</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/sơ mi buộc nơ_large.jpg"
												alt="" /></a>
											<h2>205.000 VND</h2>
											<p>Sơ mi buộc nơ</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/váy hoa xanh_large.jpg"
												alt="" /></a>
											<h2>200.000 VND</h2>
											<p>Váy hoa xanh</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="companyprofile">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_do_beo_tay_dai_-_dk275__189k___2__large.jpg"
												alt="" /></a>
											<h2>189.000 VND</h2>
											<p>Đầm đỏ bèo tay dài</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_beo_-dk239_189k___3__large.jpg"
												alt="" /></a>
											<h2>189.000 VND</h2>
											<p>Đầm bèo</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_xanh_chit_eo-dk285_189k__large.jpg"
												alt="" /></a>
											<h2>285.000 VND</h2>
											<p>Đầm xanh</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/đầm baby3.jpg"
												alt="" /></a>
											<h2>185.000 VND</h2>
											<p>Đầm baby</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="tag">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/ao_hoa_beo_vang__ayv50-2_149k_-_quan_-_syv40_139k___1__large.jpg"
												alt="" /></a>
											<h2>149.000 VNd</h2>
											<p>Áo hoa</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_do_beo_tay_dai_-_dk275__189k___2__large.jpg"
												alt="" /></a>
											<h2>189.000 VND</h2>
											<p>Đầm đỏ bèo tay dài</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/dam_beo_-dk239_189k___3__large.jpg"
												alt="" /></a>
											<h2>239.000 VND</h2>
											<p>Đầm bèo</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a><img
												src="${pageContext.request.contextPath}/resources/images/home/quan_ong_rong_-qk284_159k_-_ao_chu_theu-dk242_179k___5__large.jpg"
												alt="" /></a>
											<h2>284.000 VND</h2>
											<p>Quần ống rộng</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade active in" id="reviews">
							<div class="col-sm-12">
								<ul>
									<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
									<li><a href=""><i class="fa fa-calendar-o"></i>5 MAY 5
											2014</a></li>
								</ul>
								<p>: Nữ tính và thanh lịch với mẫu áo bèo xanh đến từ
									Valanno. Với chất liệu phi bóng mềm mịn thấm hút tốt giúp người
									mặc cảm thấy thoải mái khi diện. Thiết kế phần vạt bèo ngực với
									phần tay loe mang lại sự trẻ trung nhưng không kém phần thời
									trang.</p>

							</div>
						</div>

					</div>
				</div>
				<!--/category-tab-->

				<div class="recommended_items">
					<!--recommended_items-->
					<h2 class="title text-center">SẢN PHẨM KHÁC</h2>

					<div id="recommended-item-carousel" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img
													src="${pageContext.request.contextPath}/resources/images/home/51_large.jpg"
													alt="" /></a>
												<h2>209.000 VND</h2>
												<a href=""><p>Đầm hai dây</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img
													src="${pageContext.request.contextPath}/resources/images/home/ao_hoa_beo_vang__ayv50-2_149k_-_quan_-_syv40_139k___1__large.jpg"
													alt="" /></a>
												<h2>152.000 VND</h2>
												<a href=""><p>Áo hoa bèo vàng</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img
													src="${pageContext.request.contextPath}/resources/images/home/dam_voan_yem-dwv79_229k___2__large.jpg"
													alt="" /></a>
												<h2>192.000 VND</h2>
												<a href=""><p>Đầm voan yếm</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img
													src="${pageContext.request.contextPath}/resources/images/home/dam_xanh_chit_eo-dk285_189k__large.jpg"
													alt="" /></a>
												<h2>183.000 VND</h2>
												<a href=""><p>Đầm xanh</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img
													src="${pageContext.request.contextPath}/resources/images/home/sơ mi buộc nơ_large.jpg"
													alt="" /></a>
												<h2>145.000 VND</h2>
												<a href=""><p>Sơ mi buộc nơ</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href=""><img 
													src="${pageContext.request.contextPath}/resources/images/home/váy hoa xanh_large.jpg"
													alt="" /></a>
												<h2>185.000 VND</h2>
												<a href=""><p>Váy hoa xanh</p></a>
												<a href="${pageContext.request.contextPath}/cart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="left recommended-item-control"
							href="#recommended-item-carousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right recommended-item-control"
							href="#recommended-item-carousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>
				</div>
				<!--/recommended_items-->

			</div>

		</div>
	</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>