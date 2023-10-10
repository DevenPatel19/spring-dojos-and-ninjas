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
<title>Ninja Dashboard</title>
</head>
<body>
	<div class="container mt-5" >
		<h1>Ninja Board</h1>
		<a href="/dojos/new">Create a new Dojo</a>
		<a href="/ninjas/new">Create a new Ninja</a>
		<div class="mt-5"></div>
		<h1> All Ninjas </h1>
		<table class="table">
		<thead>
			<tr>
			 <th> First Name</th>
			 <th> Last Name</th>
			 <th> Age </th>
			 <th> Location </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="eachNinja" items="${ninjaList }">
				<tr>
					<td> <c:out  value="${eachNinja.first_name}"/></td>
					<td> <c:out  value="${eachNinja.first_name}"/></td>
					<td> <c:out  value="${eachNinja.first_name}"/></td>
					<td> 
						<a href="/dojos/${eachNinja.dojos.id} ">
					<c:out  value="${eachNinja.dojos.name}"/> </a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		
	</div>
</body>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</html>