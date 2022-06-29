<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="/SOF302_Java5_Quan1/admin/category/store"
						modelAttribute="category">
						<h3 class="text-center mt-3">Thêm Danh mục</h3>
						<div class="row col-5 offset-4">
							<div class="form-group mt-3">
								<label>Tên Danh Mục</label>
								<form:input path="name" class="form-control" name="name" />
								<form:errors path="name" class="text-danger" style="color: red"/>
							</div>
							<div class="mt-3">
								<button class="btn btn-success">Thêm</button>
								<button type="reset" class="btn btn-danger">Hủy</button>
							</div>
						</div>
					</form:form>
</body>
</html>