<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary Page</title>

</head>
<body>

<jsp:include page="header.jsp" />
	
	<a href="${pageContext.request.contextPath }/user/home"><button>User
			Home</button></a>
	<hr />
	<h1>Your Corona Kit Order Details</h1>
	<table border="1">
		<tbody>
			<tr>
				<td><b>Order Id </td>
				<td>${CoronaKit.id}</td>
			</tr>
			<tr>
				<td><b>Order Amount</td>
				<td>${CoronaKit.totalAmount}</td>
			</tr>
			<tr>
				<td><b>Delivery Address</td>
				<td>${CoronaKit.deliveryAddress}</td>
			</tr>
			<tr>
		</tbody>
	</table>
	<br>
	<br>

	<h3><b>Ordered Products</h3>

	<table border="1">
		<thead>
			<th>Corona Kit ID</th>
			<th>Product Name</th>
			<th>Product Quantity</th>
			<th>Amount</th>
		</thead>
		<tbody>
			<core:forEach var="kit" items="${OrderedKits}">
				<tr>
					<td>${kit.coronaKitId }</td>
					<td>${kit.productName }</td>
					<td>${kit.quantity }</td>
					<td>${kit.amount}</td>
				</tr>
			</core:forEach>
		</tbody>
	</table>

	<core:remove var="CartDetails" scope="session" />
</body>
</html>