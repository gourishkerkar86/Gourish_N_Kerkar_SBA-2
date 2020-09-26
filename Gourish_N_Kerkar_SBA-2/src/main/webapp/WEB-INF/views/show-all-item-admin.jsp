<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Products List Page</title>
</head>
<body>
<jsp:include page="header.jsp" />
	<h1>Available Products</h1>
	<table border="1">
		<thead>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Product Cost</th>
			<th></th>
		</thead>

		<tbody>
			<core:forEach var="product" items="${productList}">
				<tr>
					<td>${product.id}</td>
					<td>${product.productName}</td>
					<td>${product.productDescription}</td>
					<td>${product.cost}</td>
					<td><a href="${pageContext.request.contextPath}/admin/product-delete/${product.id}"><input id="delete" type="button" value="Delete"></a></td>
				</tr>
			</core:forEach>
		</tbody>
	</table>
	
	<br>
	<div>
		<a	href="${pageContext.request.contextPath}/admin/home"><input	type="button" value="Admin Home"></a>
		 &nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/admin/product-entry"><input	type="button" value="Add New Product"></a>
	</div>
	<br>
</body>
</html>