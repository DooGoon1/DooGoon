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
							<h5 class="card-title fw-bold">H?? N???I</h5>
							<p class="card-text">Khu Gi??o d???c v?? ????o t???o ??? Khu C??ng ngh???
								cao H??a L???c ??? Km29 ?????i l??? Th??ng Long, H. Th???ch Th???t, TP. H?? N???i
							</p>
							<p class="card-text">??i???n tho???i: 024 7300 1866</p>
							<p class="card-text">Email: daihocfpt@fpt.edu.vn</p>
							<p class="card-text">
								<small class="text-muted">FPT Polytechnic</small>
							</p>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<h5 class="card-title fw-bold">TP. H??? CH?? MINH</h5>
							<p class="card-text">L?? E2a-7, ???????ng D1 Khu C??ng ngh??? cao, P.
								Long Th???nh M???, TP. Th??? ?????c, TP. H??? Ch?? Minh</p>
							<p class="card-text">??i???n tho???i: 028 7300 1866</p>
							<p class="card-text">Email: daihocfpt@fpt.edu.vn</p>
							<p class="card-text">
								<small class="text-muted">FPT Polytechnic</small>
							</p>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<h5 class="card-title fw-bold">???? N???NG</h5>
							<p class="card-text">Khu ???? th??? c??ng ngh??? FPT ???? N???ng, P. Ho??
								H???i, Q. Ng?? H??nh S??n, TP. ???? N???ng</p>
							<p class="card-text">??i???n tho???i: 0236 730 1866</p>
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