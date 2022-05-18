<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>This is home page</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3 ">Welcome to Product App</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
							
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products}" var="product">
						<tr>
							<th scope="row">${product.pid}</th>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td class="font-weight-bold">&#x20B9;${product.price}</td>
							<td><a href="delete-product/${product.pid}"><i class="fas fa-trash text-danger"></i></a>&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="update-product/${product.pid}"><i class="fa-solid fa-pen-nib"></i></a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
				<a href="add-product" class="btn btn-outline-success">Add Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>