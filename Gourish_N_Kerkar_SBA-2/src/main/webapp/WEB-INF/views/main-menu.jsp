<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />

<h1>Welcome to Corona Kit Dashboard!!!</h1>
<hr>

<h2>Hello <security:authentication property="principal.username"/></h2>

<security:authorize access="hasRole('ADMIN')">
	<a href="${pageContext.request.contextPath}/admin/home"><button>ADMIN DASHBOARD</button></a>
</security:authorize>

<security:authorize access="hasRole('USER')">
	<a href="${pageContext.request.contextPath}/user/home"><button>USER DASHBOARD</button></a>
</security:authorize>


</body>
</html>