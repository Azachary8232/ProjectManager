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
	<div class="container2 m-5 ">
		<div class="flex">
			<div>
				<h1>Welcome, SAMPLE</h1>
			</div>
			<div class="mx-5 alignCenter">
				<a href="/logout">logout</a>
			</div>
		</div>
		<div class="flex spaceBetween my-3">
			<div>
				<p>All Projects</p>
			</div>
			<div>
				<a href="/projects/new" class="btn btn2 btn-primary">+ new project</a>
			</div>
		</div>
		<div>
			<div>
				<p>All Projects</p>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<td>Project</td>
							<td>Team Lead</td>
							<td>Due Date</td>
							<td>Actions</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="">SAMPLE</a></td>
							<td>SAMPLE</td>
							<td>SAMPLE</td>
							<td>SAMPLE</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="my-5">
				<p>Your Projects</p>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<td>Project</td>
							<td>Lead</td>
							<td>Due Date</td>
							<td>Actions</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="">SAMPLE</a></td>
							<td>SAMPLE</td>
							<td>SAMPLE</td>
							<td>SAMPLE</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>