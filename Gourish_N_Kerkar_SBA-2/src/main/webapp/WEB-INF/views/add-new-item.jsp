<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<h1>Add a New Product</h1>

	<!-- 	modelAttribute : Map the model object with spring form  -->
	<!-- 	When form loads : calls the getter methods of fields  -->
	<!-- 	When form is submitted : calls the setter methods of fields -->
	<spring:form
		action="${pageContext.request.contextPath}/admin/product-save"
		method="post" modelAttribute="product">

		<div>
			<div>
				<spring:label path="productName">Enter Product Name</spring:label>
			</div>
			<div>
				<spring:input path="productName" />
				<spring:errors path="productName" cssClass="error" />
			</div>
		</div>
		<br>
		<br>
		<div>
			<div>
				<spring:label path="cost">Enter Product Cost</spring:label>
			</div>
			<div>
				<spring:input path="cost" />
				<spring:errors path="cost" cssClass="error" />
			</div>
		</div>

		<br>
		<br>
		<div>
			<div>
				<spring:label path="productDescription">Enter Product description</spring:label>
			</div>
			<div>
				<spring:input path="productDescription" />
				<spring:errors path="productDescription" cssClass="error" />
			</div>
		</div>
		<br>
		<br>

		<div>
			<div>
				<input type="submit" value="Submit" />
			</div>
		</div>
	</spring:form>

	<hr />
</body>
</html>