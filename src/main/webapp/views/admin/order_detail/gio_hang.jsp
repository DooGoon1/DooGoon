<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="/SOF302_Java5_Quan1/css/bootstrap.min.css">
</head>
<body>
<nav class="nav">
		<a class="nav-link active" aria-current="page"
			href="/SOF302_Java5_Quan1/admin/accounts/index">IT16305</a> <a
			class="nav-link" href="/SOF302_Java5_Quan1/admin/product/index_pro">Product</a>
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/category/index_cate">Category</a> <a
			class="nav-link" href="/SOF302_Java5_Quan1/admin/order/index_order">Order</a>
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/order_detail/index_detail">Order_Detail</a>
		<a class="nav-link"
			href="/SOF302_Java5_Quan1/admin/order_detail/buy">Giỏ Hàng</a>
		<a class="nav-link disabled">PH15699</a>
	</nav>
<div class="row">
	   <div class="col-12">
	   <table class="table">
		<thead>
			<tr>
				<th>Tên sản phẩm</th>
				<th>Số lượng</th>
				<th>Giá</th>
				<th>Tổng tiền</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${ data }" var="acc">
			<tr>
				<td>${ acc.product.name }</td>
				<td><input name="quantity" value="${ acc.quantity }" 
						onblur="this.form.submit()" style="width: 50px"> </td>
				<td>${ acc.product.price }</td>
				<td>${ acc.price }</td>
				<td><a class="btn btn-danger" href="/SOF302_Java5_Quan1/admin/order_detail/delete/${acc.id }">Xóa</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	   </div>
	   <div class="col-12">
	   <form:form action="/SOF302_Java5_Quan1/admin/order_detail/add"
	    method="POST" 
	    modelAttribute="oder">
	    <div class="row">
	    	<div class="row">
	    	<h3 class="text-info text-center mt-1">Hóa Đơn</h3>
			   <div class="form-group mt-3">
				    <label>Thành tiền</label>
				    <input class="form-control" type="text" value="${thanhtien }">
			    </div>
			    
			    <div>
				    <label>Ngày Mua</label>
				    <form:input class="form-control" path="createdDate" type="date"/>  
			    </div>
				
			    <div class="form-group mt-3">
				    <label>Địa chỉ</label>
				    <form:input class="form-control" path="address"/>  
			    </div>
			    <div>
			    	<button class="btn btn-primary mt-2">Thanh toán</button>
			    </div>
			    </div>
		   </div>	    
		    </form:form>
	   </div>
	</div>
</body>
</html>