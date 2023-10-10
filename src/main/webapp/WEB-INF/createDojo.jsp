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

<title>New Dojo</title>
</head>
<body>
	<div class="container mt-5" style="width:40rem;">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="POST" modelAttribute="newDojos">
			<div class="form-control">
				<form:label path="name"> Name: </form:label>
				<form:input path="name" class="form-control" />
				<form:errors path="name"></form:errors>
			</div>
			<button type="submit" class="btn btn-primary">Create</button>
		</form:form>
	</div>
</body>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</html>