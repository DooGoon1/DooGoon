<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16308 - Create Account</title>
<link rel="stylesheet"
	href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
</head>
<body>
	<form:form
					method="POST"
					action="/SOF302_Java5_Quan1/admin/accounts/store"
					modelAttribute="accounts">
					<h3 class="text-center mt-3">Đăng Ký Tài Khoản</h3>
					<div class="row col-5 offset-4">
						<div class="form-group mt-3">
							<label>Fullname</label>
							<form:input path="fullname"  class="form-control"   />
							<form:errors path="fullname" class="text-danger" style="color: red"/>
						</div>
						<div class="form-group mt-3">
							<label>Email</label>
							<form:input path="email" type="email"  class="form-control"  />
							<form:errors path="email" class="text-danger" style="color: red"/>
						</div>
						<div class="form-group mt-3">
							<label>Username</label>
							<form:input path="username"   class="form-control" />
							<form:errors path="username" class="text-danger" style="color: red"/>
						</div>
						<div class="form-group mt-3">
							<label>Password</label>
							<form:password path="password" class="form-control" />
							<form:errors path="password" class="text-danger" style="color: red"/>
						</div>
						<div class="form-group mt-3">
							<label>Photo</label>
							<form:input path="photo"  class="form-control" type="file" />
							<form:errors path="photo" class="text-danger" style="color: red"/>
						</div>
						
						<div class="form-group mt-3">
							<label>Activated</label>
							<form:select path="activated" class="form-control">
								<form:option value="1">Hoạt động</form:option>
								<form:option value="0">Vô hiệu hóa</form:option>
							</form:select>
						</div>
						
						<div class="form-group mt-3">
							<label>Admin</label>
							<form:select path="admin" class="form-control">
								<form:option value="0">Member</form:option>
								<form:option value="1">Admin</form:option>
							</form:select>
						</div>
						<div class="mt-3">
							<button class="btn btn-success">Thêm</button>
							<button type="reset" class="btn btn-danger">Hủy</button>
						</div>
					</div>
				</form:form>
</body>
</html>