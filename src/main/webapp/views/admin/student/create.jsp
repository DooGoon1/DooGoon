<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" modelAttribute="student" action="/SOF302_Java5-2/admin/student/store">
		<div>
			<label>Họ Tên</label>
			<form:input type="text" name="name" path="name"/>
			<form:errors path="name" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Giới Tính</label>
			<form:radiobutton label="Nam" value="true" name="gioiTinh" path="gioiTinh"/>
			<form:radiobutton label="Nữ" value="false" name="gioiTinh" path="gioiTinh"/>
			<form:errors path="gioiTinh" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Email</label>
			<form:input type="email" name="email" path="email" />
			<form:errors path="email" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Điểm</label>
			<form:input type="text" name="diem" path="diem"/>
			<form:errors path="diem" class="text-danger" style="color: red"/>
		</div>
		<div>
			<label>Khoa</label>
			<form:select path="khoa">
			</form:select>
		</div>
		<button>Submit</button>
	</form:form>
</body>
</html>