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
<div class="container2 m-3">
	<div>
		<h1>Create a Project</h1>
	</div>
	<div>
		<form:form action="/" method="post" modelAttribute="exp">
			<div class="input-group mb-3">
			    <form:label class="input-group-text" path="expense">Expense</form:label>
			    <form:errors path="expense"/>
			    <form:input path="expense" class="form-control"/>
			</div>
			<div class=" my-4 mb-3">
			    <form:label class="input-group-text" path="description">Description</form:label>
			    <form:errors path="description"/>
			    <form:textarea path="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></form:textarea>
			</div>	
			<div>
			<div class=" my-4 mb-3">
			    <form:label class="input-group-text" path="dutDate">Due Date</form:label>
			    <form:errors path="dueDate"/>
			    <form:input path="dueDate" type="date" class="form-control"></form:input>
			</div>	
			    <form:hidden path="creator"  value="${user_id}"></form:hidden>
				<div class="flex flex-end">
					<button type="submit" class="btn btn2 btn-primary">Submit</button>
					<button type="submit" class="btn btn2 btn-primary">Submit</button>
				</div>				
			</div>	
		</form:form>
	</div>






</div>


</body>
</html>