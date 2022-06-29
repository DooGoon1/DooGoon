<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
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
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/order_detail/buy">Giỏ Hàng</a>
		<a class="nav-link disabled">PH15699</a>
	</nav>

	<div class="mt-3">
		<a class="btn btn-success"
			href="/SOF302_Java5_Quan1/admin/accounts/create_acc">Thêm Mới</a>
	</div>

	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Fullname</th>
				<th>Username</th>
				<th>Email</th>
				<th>Photo</th>
				<th>Activated</th>
				<th>Role</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ data.content }" var="acc">
				<tr>
					<td>${ acc.id }</td>
					<td>${ acc.fullname }</td>
					<td>${ acc.username }</td>
					<td>${ acc.email }</td>
					<td><img src="${ acc.photo }" /></td>
					<td>${ acc.activated == 0 ? "Not Active" : "Active" }</td>
					<td>${ acc.admin == 1 ? "Admin" : "Member" }</td>
					<td><a
						href="/SOF302_Java5_Quan1/admin/accounts/edit/${ acc.id }"
						class="btn btn-primary">Edit</a></td>
					<td>
								<button type="button" class="btn btn-danger"
									data-bs-toggle="modal" data-bs-target="#exampleModal${ acc.id }">
									Xóa</button>
								<div class="modal fade" id="exampleModal${ acc.id }"
									tabindex="-1" aria-labelledby="exampleModalLabel${ acc.id }"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel${ acc.id }">Thông
													báo</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">Bạn có muốn xóa không?</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Close</button>
												<a href="/SOF302_Java5_Quan1/admin/accounts/delete/${ acc.id }">
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
			<c:forEach var="i" begin="0" end="${ data.totalPages - 1 }">
				<li class="page-item"><a class="page-link"
					href="/SOF302_Java5_Quan1/admin/accounts/index?page=${ i }"> ${ i + 1 }
				</a></li>
			</c:forEach>
		</ul>
	</div>
	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>