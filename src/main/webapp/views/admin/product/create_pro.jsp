<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST"
		action="/SOF302_Java5_Quan1/admin/product/store"
		modelAttribute="products">
		<h3 class="text-center mt-3">Thêm Sản Phẩm</h3>
		<div class="row col-5 offset-4">
			<div class="form-group mt-3">
				<label>Tên Sản Phẩm</label>
				<form:input path="name" class="form-control" />
				<form:errors path="name" class="text-danger" style="color: red"/>
			</div>
			<div class="form-group mt-3">
				<label>Hình Ảnh</label>
				<form:input path="image" type="file" class="form-control" />
				<form:errors path="image" class="text-danger" style="color: red"/>
			</div>
			<div class="form-group mt-3">
				<label>Giá Tiền</label>
				<form:input path="price" class="form-control" />
			</div>
			<div class="form-group mt-3">
				<label>Ngày Tạo</label>
				<form:input path="createdDate" class="form-control" type="date"/>
			</div>
			<div class="form-group mt-3">
				<label>Available</label>
				<form:select path="available" class="form-control">
					<form:option value="0">Có Sẵn</form:option>
					<form:option value="1">Hết Hàng</form:option>
				</form:select>
			</div>

			<div class="form-group mt-3">
				<label class="form-label ">ID_Danh Mục</label>
				<form:select name="category" path="category">
					<c:forEach items="${ dsCate }" var="cate">
						<option value="${ cate.id }">${ cate.name }</option>
					</c:forEach>
				</form:select>
				<form:errors path="category" class="text-danger"
					style="color: red" />
			</div>

			<div class="mt-3">
				<button class="btn btn-success">Thêm</button>
				<a class="btn btn-success"
					href="/SOF302_Java5_Quan1/admin/product/index_pro">Hủy</a>
			</div>
		</div>
	</form:form>
</body>
</html>