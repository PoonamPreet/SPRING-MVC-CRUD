<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<form class="form-horizontal" action="${pageContext.request.contextPath}/handle-product" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend class="text-center" style="text-decoration: inherit;">UPDATE
				PRODUCTS</legend>
				<input type="hidden" value="${product.pid }" name="pid"/>
			<br>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">PRODUCT
					NAME</label>
				<div class="col-md-4">
					<input id="name" name="name" placeholder=" NAME"
						class="form-control input-md" required="" type="text"
						value="${product.name }">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="description">PRODUCT
					DESCRIPTION</label>
				<div class="col-md-4">
					<text-area class="form-control" id="description" name="description"
						placeholder="DESCRIPTION" rows="5">${product.description}</text-area>

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="PRICE">PRICE</label>
				<div class="col-md-4">
					<input id="PRICE" name="price" placeholder="PRICE"
						class="form-control input-md" value="${product.price}" required=""
						type="text">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group text-center">
				<label class="col-md-4 control-label" for="singlebutton"></label>
				<div class="col-md-4">
					<a href="${pageContext.request.contextPath}"
						class="btn btn-outline-danger">Back</a>

					<button type="submit" class="btn btn-primary">Update</button>
				</div>
			</div>

		</fieldset>
	</form>

</body>
</html>