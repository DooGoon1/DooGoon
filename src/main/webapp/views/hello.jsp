<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello ${ message }</h1>
	<form action="/SOF302_Java5-2/hello" method="GET">
		<input type="text" name="ho_ten"/>
		<button>Submit</button>
	</form>
</body>
</html>