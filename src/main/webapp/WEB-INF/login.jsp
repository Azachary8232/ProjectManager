<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/style.css"> 
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> 
<script type="text/javascript" src="js/app.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script> 
<title>Insert title here</title>
</head>
<body>
	<div class="container2 m-4">
		<div class="flex spaceAround">
			<div>
				<h1 class="mb-3">Register</h1>
				<form:form action="/register" method="post" modelAttribute="newUser">
			        <div class="form-group mb-3">
			            <label>User Name:</label>
			            <form:input path="userName" class="form-control" />
			            <form:errors path="userName" class="text-danger" />
			        </div>
			        <div class="form-group mb-3">
			            <label>Email:</label>
			            <form:input path="email" class="form-control" />
			            <form:errors path="email" class="text-danger" />
			        </div>
			        <div class="form-group mb-3">
			            <label>Password:</label>
			            <form:password path="password" class="form-control" />
			            <form:errors path="password" class="text-danger" />
			        </div>
			        <div class="form-group mb-3">
			            <label>Confirm Password:</label>
			            <form:password path="confirm" class="form-control" />
			            <form:errors path="confirm" class="text-danger" />
			        </div>
			        <input type="submit" value="Register" class="btn btn2 btn-primary" />
			    </form:form>
			</div>	
			<div>
				<h1 class="mb-3">Login</h1>
				<form:form action="/login" method="post" modelAttribute="newLogin">
			        <div class="form-group mb-3">
			            <label>Email:</label>
			            <form:input path="email" class="form-control" />
			            <form:errors path="email" class="text-danger" />
			        </div>
			        <div class="form-group mb-3">
			            <label>Password:</label>
			            <form:password path="password" class="form-control" />
			            <form:errors path="password" class="text-danger" />
			        </div>
			        <input type="submit" value="Login" class="btn btn2 btn-success" />
			    </form:form>
			</div>
		</div>
	</div>



</body>
</html>