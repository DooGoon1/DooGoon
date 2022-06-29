<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<c:if test="${ !empty sessionScope.errors }">
	<div class="alert alert-danger">${ sessionScope.errors }</div>
	<c:remove var="error" scope="session"></c:remove>
</c:if>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/bootstrap.min.css" />
</head>
<body>
	<div class="col-10 offset-1 mt-5">
		<c:if test="${ not empty sessionScope.error }">
			<div class="alert alert-danger">${ sessionScope.error }</div>
			<c:remove var="error" scope="session"/>
		</c:if>
		
		<div class="col-10 offset-1 mt-5">
			<form method="POST" action="${ pageContext.request.contextPath }/login_acc" >
				<div class="mt-3">
					<label for="email">Email</label>
					<input type="email" name="email" id="email" class="form-control" />
				</div>
				<div class="mt-3">
					<label for="password">Password</label>
					<input type="password" name="password" id="password" class="form-control" />
				</div>
				<div class="mt-3">
					<button class="btn btn-primary">Login</button>
				</div>
			</form>
		</div>
	</div>


	<script src="/SOF302_Java5_Quan1/js/jquery.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/popper.min.js"></script>
	<script src="/SOF302_Java5_Quan1/js/bootstrap.min.js"></script>
</body>
</html>