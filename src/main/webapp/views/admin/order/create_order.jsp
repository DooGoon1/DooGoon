<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
</head>
<body>
<form:form
					method="POST"
					action="/SOF302_Java5_Quan1/admin/order/store"
					modelAttribute="order">
					<div class="row col-5 offset-4">
						<div class="form-group mt-3">
							<label class="form-label ">User_ID</label> 
							<form:select
								name="user"  path="user">
								<c:forEach items="${ dsAcc }" var="acc">
									<option value="${ acc.id }">${ acc.username }</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group mt-3">
							<label>Created_Date</label>
							<form:input path="createdDate" class="form-control" />
						</div>
						<div class="form-group mt-3">
							<label>Address</label>
							<form:input path="address" class="form-control" />
						</div>
									
						<div class="mt-3">
							<button class="btn btn-success">Thêm</button>
							<a class="btn btn-danger">Hủy</a>
						</div>
					</div>
				</form:form>
</body>
</html>