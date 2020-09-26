<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Cart Details</title>
</head>
<body>
<jsp:include page="header.jsp" />
	<h1>Your Corona Kit</h2>

		<hr>
		<core:choose>
			<core:when test="${sessionScope.CartDetails!= null}">
				<table border="1">
					<thead>
						<th>Product Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Amount</th>
						<th></th>
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
									<td><a
										href="${pageContext.request.contextPath }/user/delete/${product.productId}"><button>Delete</button></a></td>
								</tr>
							</core:forEach>
							<tr>
								<td colspan="3"><b>Total Order Cost</td>
								<td><b>${total}</td>
								<td></td>									
							</tr>
						</tbody>
					</table>
				<br />

				<a href="${pageContext.request.contextPath }/user/show-list"><button>View available products</button></a>
				&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath }/user/checkout"><button>Confirm Order</button></a>
				<hr>
			</core:when>
			
			<core:otherwise>
				<h3>No Item has been added to your Cart.</h3>
			</core:otherwise>
			
		</core:choose>
		
</body>
</html>