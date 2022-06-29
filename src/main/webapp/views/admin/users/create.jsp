<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16306 - Create User</title>
</head>
<body>
	<form:form method="POST" modelAttribute="user" action="/SOF302_Java5_Quan1/admin/users/store">
		<div>
			<label>Họ Tên</label>
			<form:input type="text" name="hoTen"  path="hoTen"/>
			<form:errors path="hoTen" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Địa chỉ</label>
			<form:input type="text" name="diaChi" path="diaChi"/>
			<form:errors path="diaChi" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Giới Tính</label>
			<form:radiobutton label="Nam" value="1" name="gioiTinh" path="gioiTinh"/>
			<form:radiobutton label="Nữ" value="0" name="gioiTinh" path="gioiTinh"/>
			<form:errors path="gioiTinh" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Email</label>
			<form:input type="email" name="email" path="email" />
			<form:errors path="email" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Password</label>
			<form:password  name="password" path="password"/>
			<form:errors path="password" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>SĐT</label>
			<form:input type="text" name="sdt" path="sdt"/>
			<form:errors path="sdt" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Avatar</label>
			<form:input type="text" name="avatar" path="avatar"/>
			<form:errors path="avatar" class="text-danger" style="color: red"/>
		</div>
		<button>Submit</button>
	</form:form>

</body>
</html>