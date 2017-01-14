<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Log in!</title>
</head>
<body><br><br><br>
	<h3>
		Hello, Guest<br>
	</h3>
	<br>
	<sf:form action="perform_login" method="post" commandName="user"
		class="form-horizontal col-xs-6">
		<div class="well">
			<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{1,10}" title="minimum length for username is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					title="Enter Valid credentials"/>
				</div>
				<div>
					<input type="submit" value="Log in" /> 
					<a href="#">Lost your
						password?</a> <a href="usersignup">Register</a>
				</div>
				</div>

	</sf:form>
</body>
</html>