<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Admin Home</title>
</head>
<body>
<jsp:include page="header.jsp" />	
	<h1>This is Admin dashboard</h1>
	<hr>
	<br>
	<a href="${pageContext.request.contextPath}/home"><input type="button" value="Main Menu"></a>
	<br>
	<br>
	<a href="${pageContext.request.contextPath}/admin/product-list"><input type="button" value="View All Products"></a>
	&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/admin/product-entry"><input	type="button" value="Add New Product"></a>
	

</body>
</html>