<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/SOF302_Java5_Quan1/Image/saint.jpg"
						style="height: 500px; width: 2000px" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/SOF302_Java5_Quan1/Image/dualipa.jpg"
						style="height: 500px; width: 2000px" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/SOF302_Java5_Quan1/Image/mon.jpg"
						style="height: 500px; width: 2000px" class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<!-- Navbar -->
			<nav class="nav">
				<a class="nav-link active" aria-current="page"
					href="/SOF302_Java5_Quan1/admin/accounts/index">IT16305</a> <a class="nav-link"
					href="/SOF302_Java5_Quan1/admin/product/index_pro">Product</a> <a
					class="nav-link" href="/SOF302_Java5_Quan1/admin/category/index_cate">Category</a> <a
					class="nav-link" href="/SOF302_Java5_Quan1/admin/order/index_order">Order</a> <a
					class="nav-link" href="/SOF302_Java5_Quan1/admin/order_detail/index_detail">Order_Detail</a> <a
					class="nav-link disabled">PH15699</a>
			</nav>

			<!-- End Navbar -->
			<!-- End Body -->

			<!-- footer -->
			<div class="text-center mt-4">

				<div class="card-group">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title fw-bold">HÀ NỘI</h5>
							<p class="card-text">Khu Giáo dục và Đào tạo – Khu Công nghệ
								cao Hòa Lạc – Km29 Đại lộ Thăng Long, H. Thạch Thất, TP. Hà Nội
							</p>
							<p class="card-text">Điện thoại: 024 7300 1866</p>
							<p class="card-text">Email: daihocfpt@fpt.edu.vn</p>
							<p class="card-text">
								<small class="text-muted">FPT Polytechnic</small>
							</p>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<h5 class="card-title fw-bold">TP. HỒ CHÍ MINH</h5>
							<p class="card-text">Lô E2a-7, Đường D1 Khu Công nghệ cao, P.
								Long Thạnh Mỹ, TP. Thủ Đức, TP. Hồ Chí Minh</p>
							<p class="card-text">Điện thoại: 028 7300 1866</p>
							<p class="card-text">Email: daihocfpt@fpt.edu.vn</p>
							<p class="card-text">
								<small class="text-muted">FPT Polytechnic</small>
							</p>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<h5 class="card-title fw-bold">ĐÀ NẴNG</h5>
							<p class="card-text">Khu đô thị công nghệ FPT Đà Nẵng, P. Hoà
								Hải, Q. Ngũ Hành Sơn, TP. Đà Nẵng</p>
							<p class="card-text">Điện thoại: 0236 730 1866</p>
							<p class="card-text">Email: daihocfpt@fpt.edu.vn</p>
							<p class="card-text">
								<small class="text-muted">FPT Polytechnic</small>
							</p>
						</div>
					</div>

				</div>
			</div>
			<!-- End footer -->

		</div>
	</div>
	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>