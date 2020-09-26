<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Order</title>
</head>
<body>
<jsp:include page="header.jsp" />
	
	<h3>Your Corona Kit</h3>
	<core:choose>
		<core:when test="${sessionScope.CartDetails!= null}">
			<a href="${pageContext.request.contextPath }/user/show-list"><button>Add more products</button></a>
			<br>
			<br>
			<table border="1">
				<thead>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Amount</th>
				</thead>
				<core:set var="total" value="0"></core:set>
				<tbody>
					<core:forEach var="product" items="${sessionScope.CartDetails }">
						<core:set var="total"
							value="${total + product.amount * product.quantity }"></core:set>
						<tr>
							<td>${product.productName }</td>
							<td>${product.amount }</td>
							<td>${product.quantity }</td>
							<td>${product.amount * product.quantity }</td>
						</tr>
					</core:forEach>
					<tr>
						<td colspan="3"><b>Total Order Cost</td>
						<td><b>${total}</td>
					</tr>
				</tbody>
			</table>
			<hr>
			<br>
			<spring:form
				action="${pageContext.request.contextPath}/user/finalize" method="post" modelAttribute="CoronaKit">
				<div>
					<spring:label path="deliveryAddress"><b>Enter Shipping Address</spring:label>
					<br>
					<spring:textarea path="deliveryAddress" cols="20" rows="5" />
					
					<br><br> <input type="submit" value="Confirm Order">
				</div>
			</spring:form>
		</core:when>
		<core:otherwise>
			<h2>No Kits are added to cart for checkout. Please add kits to
				proceed....</h2>
			<a href="${pageContext.request.contextPath }/user/show-list">Show
				Products For Shopping</a>
		</core:otherwise>
	</core:choose>
	
</body>
</html>