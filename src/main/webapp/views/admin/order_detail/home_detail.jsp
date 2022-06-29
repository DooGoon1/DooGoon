<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<a class="nav-link disabled">PH15699</a>
	</nav>

	<div class="container">
		<div class="row">
			<div class=" col-12 col-md-9">
				<div class="col-12 col-lg-12 row container  p-2">
					<c:forEach items="${ data.content }" var="pro">
						<div class="card col-md-3 p-3 mb-3 ms-3	text-center">
							<form:form
								action="/SOF302_Java5_Quan1/admin/order_detail/store/${pro.id }"
								method="POST" modelAttribute="orderDetail">
								<div class="card-body">
									<img src="/SOF302_Java5_Quan1/Image/${ pro.image }"
										class="img-fluid mt-4 rounded mx-auto" style="height: 200px"
										width="800px" alt="...">
								</div>
								<div class="card-footer">
									<%-- <h5 class="card-title">${pro.id }</h5> --%>
									<h5 class="card-title">${pro.name }</h5>
									<p class="card-text">Giá bán: ${pro.price } VNĐ</p>
								</div>

								<form:input path="quantity" class="col-8 form-control" />
								<div class="row text-center">
									<button class="col-12 btn btn-primary mt-2">Thêm vào
										giỏ hàng</button>
								</div>
							</form:form>
						</div>
					</c:forEach>
				</div>

				<div class="row align-items-center">
					<div class="col-md-6 offset-6">
						<ul class="pagination">
							<c:forEach var="i" begin="0" end="${ data.totalPages -1 }">
								<li class="page-item"><a class="page-link"
									href="/SOF302_Java5_Quan1/admin/order_detail/index_detail?page=${ i }">
										${ i + 1 } </a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-12 col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Tổng tiền</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ dataa }" var="detail">
							<form:form
								action="/SOF302_Java5_Quan1/admin/order_detail/update/${detail.product.id }"
								method="POST" modelAttribute="orderDetail">
								<tr>
									<td>${ detail.product.id }</td>
									<td>${ detail.product.name }</td>
									<td><input name="quantity" value="${ detail.quantity }"
										onblur="this.form.submit()" style="width: 50px"></td>
									<td>${ detail.product.price }</td>
									<td>${ detail.price }</td>
									<td>
										<button type="button" class="btn btn-danger"
											data-bs-toggle="modal"
											data-bs-target="#exampleModal${ detail.id }">Xóa</button>
										<div class="modal fade" id="exampleModal${ detail.id }"
											tabindex="-1" aria-labelledby="exampleModalLabel${ detail.id }"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel${ detail.id }">Thông
															báo</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">Bạn có muốn xóa không?</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-bs-dismiss="modal">Close</button>
														<a
															href="/SOF302_Java5_Quan1/admin/order_detail/delete/${detail.id }">
															<button type="button" class="btn btn-danger">Xóa</button>
														</a>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
							</form:form>
						</c:forEach>

					</tbody>
				</table>

				<form:form action="/SOF302_Java5_Quan1/admin/order_detail/add"
					method="POST" modelAttribute="oder">
					<div class="row">
						<div class="row">
							<h3 class="text-info text-center mt-1">Hóa Đơn</h3>
							<div class="form-group mt-3">
								<label>Thành tiền</label> <input class="form-control"
									type="text" value="${ thanhtien }">
							</div>

							<div>
								<label>Ngày Mua</label>
								<form:input class="form-control" path="createdDate" type="date" />
							</div>

							<div class="form-group mt-3">
								<label>Địa chỉ</label>
								<form:input class="form-control" path="address" />
							</div>
							<div>
								<button class="btn btn-primary mt-2">Thanh toán</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>