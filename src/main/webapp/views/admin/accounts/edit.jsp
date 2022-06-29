<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css" />
</head>
<body>

	<div class="mt-5 col-10 offset-1">
		<form:form modelAttribute="acc" method="POST"
			action="/SOF302_Java5_Quan1/admin/accounts/update/${ acc.id }">
			<input type="hidden" name="_method" value="put" />
			<div class="form-group mt-3">
				<label for="name">Username</label>
				<form:input path="username" class="form-control"
					value="${ acc.username }" autocomplete="off" />
				<form:errors path="username" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="name">Name</label>
				<form:input path="fullname" class="form-control"
					value="${ acc.fullname }" autocomplete="off" />
				<form:errors path="fullname" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="name">Password</label>
				<form:input path="password" class="form-control"
					value="${ acc.password }" autocomplete="off" />
				<form:errors path="password" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="email">Email</label>
				<form:input path="email" class="form-control" value="${ acc.email }"
					id="email" name="email" autocomplete="off" />
				<form:errors path="email" element="span" cssClass="text-danger" />
			</div>

			<div class="form-group mt-3">
				<label for="admin">Tài khoản</label>
				<form:select path="admin" id="admin" value="${ acc.admin }"
					class="form-control">
					<form:option value="1">Admin</form:option>
					<form:option value="0">Member</form:option>
				</form:select>
				<form:errors path="admin" element="span" cssClass="text-danger" />
			</div>
			<div class="form-group mt-3">
				<label for="photo">Image</label> <input type="file"
					class="form-control" value="${ acc.photo }" id="photo" name="photo">
			</div>
			<div class="form-group mt-3">
				<label for="status">Trạng thái</label>
				<form:select path="activated" id="activated"
					value="${ acc.activated }" class="form-control">
					<form:option value="1">Hoạt động</form:option>
					<form:option value="0">Vô hiệu hóa</form:option>
				</form:select>
			</div>
			<div class="form-group mt-3">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form:form>
	</div>
	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>