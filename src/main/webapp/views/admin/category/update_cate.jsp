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
<form:form
						method="POST"
						action="/SOF302_Java5_Quan1/admin/category/update/${ cate.id }"
						modelAttribute="cate">
						
						<div class="form-group mt-3">
							<label for="name">Tên Danh Mục</label>
						    <form:input path="name" class="form-control" value="${ cate.name }"/>
						</div>
						
						<div class="form-group mt-3">
							<button class="btn btn-primary">Sửa</button>
							<button type="reset" class="btn btn-danger">Hủy</button>
						</div>
					</form:form>
</body>
</html>