<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<title>Dojo Details</title>
</head>
<body>
	<div class="container mt-5">
	<h1> <c:out value="${dojo.name}"/> Details</h1>
	<table class="table">
		<thead>
			<tr>
				 <th> First Name</th>
				 <th> Last Name</th>
				 <th> Age </th>
			 </tr>
		</thead>
		<tbody>
			<c:forEach var="eachNinja" items="${dojo.ninjas }">
				<tr>
					<td> <c:out  value="${eachNinja.first_name}"/></td>
					<td> <c:out  value="${eachNinja.last_name}"/></td>
					<td> <c:out  value="${eachNinja.age}"/></td>
					
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</body>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</html>