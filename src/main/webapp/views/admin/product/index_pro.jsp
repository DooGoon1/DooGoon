<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<nav class="nav">
		<a class="nav-link active" aria-current="page"
			href="/SOF302_Java5_Quan1/admin/accounts/index">IT16305</a> <a
			class="nav-link" href="/SOF302_Java5_Quan1/admin/product/index_pro">Product</a>
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/category/index_cate">Category</a> <a
			class="nav-link" href="/SOF302_Java5_Quan1/admin/order/index_order">Order</a>
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/order_detail/index_detail">Order_Detail</a>
		<a class="nav-link disabled">PH15699</a>
	</nav>

	<div class="mt-3">
		<a class="btn btn-success"
			href="/SOF302_Java5_Quan1/admin/product/create_pro">Thêm Mới</a>
	</div>

	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Image</th>
				<th>Price</th>
				<th>Date</th>
				<th>Available</th>
				<th>Category_ID</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ data.content }" var="pro">
				<tr>
					<td>${ pro.id }</td>
					<td>${ pro.name }</td>
					<td><img alt="" src="/SOF302_Java5_Quan1/Image/${ pro.image }" style="width: 100px; height: 70px"> </td>
					<td>${ pro.price }</td>
					<td>${ pro.createdDate }</td>
					<td>${ pro.available }</td>
					<td>${ pro.category.id }</td>
					<td><a
						href="/SOF302_Java5_Quan1/admin/product/edit/${ pro.id }"
						class="btn btn-primary">Edit</a></td>
					<td>
								<button type="button" class="btn btn-danger"
									data-bs-toggle="modal" data-bs-target="#exampleModal${ pro.id }">
									Xóa</button>
								<div class="modal fade" id="exampleModal${ pro.id }"
									tabindex="-1" aria-labelledby="exampleModalLabel${ pro.id }"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel${ pro.id }">Thông
													báo</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">Bạn có muốn xóa không?</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Close</button>
												<a href="/SOF302_Java5_Quan1/admin/product/delete/${ pro.id }">
													<button type="button" class="btn btn-danger">Xóa</button>
												</a>
											</div>
										</div>
									</div>
								</div>
							</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

	<div class="row">
		<ul class="pagination">
			<c:forEach var="i" begin="0" end="${ data.totalPages -1 }">
				<li class="page-item"><a class="page-link"
					href="/SOF302_Java5_Quan1/admin/product/index_pro?page=${ i }">
						${ i + 1 } </a></li>
			</c:forEach>
		</ul>
	</div>

			
	<div class="container mt-4">
		<div class="row">
			<c:forEach items="${ dsPro }" var="pro">
				<div class="col-12 col-md-4">
					<div class="card-group">
						<div class="card mb-3">
							<div class="row g-0">
								<div class="col-md-5 p-3">
									<img src="/SOF302_Java5_Quan1/Image/${ pro.image }"
										class="img-fluid mt-4 rounded mx-auto" style="height: 200px"
										width="800px" alt="...">
								</div>
								<div class="col-md-7 p-3">
									<div class="card-body" style="width: 18rem;">
										<h5 class="card-title">${ pro.name }</h5>
										<p class="card-text">Giá: ${ pro.price }</p>
										<p class="card-text">Danh Mục: ${ pro.category.name }</p>
										<p class="card-text pt-4">
											<a class="btn btn-primary"
												href="/SOF302_Java5_Quan1/admin/order_detail/store">Thêm Vào Giỏ</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>