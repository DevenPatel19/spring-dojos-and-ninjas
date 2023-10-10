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
<title>New Ninja</title>
</head>
<body>
	<div class="container mt-5" style="width:40rem;">
		<h1>New Ninja</h1>
		<form:form action="/ninjas/new" method="POST" modelAttribute="newNinjas">
				<div class="form-control">
   			 	<form:label path="dojos"> Dojo: </form:label>
  			  	<form:select path="dojos" class="form-control">
		        <c:forEach var="eachDojo" items="${dojoList}">
			    <form:option value="${eachDojo.id}">${eachDojo.name}
			    
			    </form:option>    
        		</c:forEach>	
			    </form:select>
			    <form:errors path="dojos"></form:errors>
</div>

			
			<div class="form-control">
				<form:label path="first_name"> First Name: </form:label>
				<form:input path="first_name" class="form-control" />
				<form:errors path="first_name"></form:errors>
			</div>
			<div class="form-control">
				<form:label path="last_name"> Last Name: </form:label>
				<form:input path="last_name" class="form-control" />
				<form:errors path="last_name"></form:errors>
			</div>
			<div class="form-control">
				<form:label path="age"> Age: </form:label>
				<form:input path="age" class="form-control" />
				<form:errors path="age"></form:errors>
			</div>
			<button type="submit" class="btn btn-primary">Create</button>
		</form:form>
	</div>
</body>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</html>