<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<style>
.navbar {
background-color: #FFFFFF;
	height: 55px;
	-webkit-box-shadow: 10px 10px 10px #EBEBE0;
    -moz-box-shadow:    10px 10px 10px #EBEBE0;
    box-shadow:         10px 10px 10px #EBEBE0;
    z-index:999;
}

.navbar .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus {
	background-color: #F0F5F5;
	color: #FF4DFF;
	padding:20px;
	
}

.navbar .navbar-right>li>a:hover, .navbar-default .navbar-right>li>a:focus
	{
	background-color: #F0F5F5;
	color: #00004D;
	
}
</style>


	<nav class="navbar navbar-fixed-top">
	<div class="container">
		
			<div class="navbar-header">
				<a class="ct-logo navbar-brand navbar-inline active"
					href="index.jsp" title="Buyer's Choice"> <img
					src="resources/images/logoinverted.jpg" width="178px" height="45px"
					style="position: absolute; top:5px; left: 20px; ">
					
				</a>
			</div>

			<div class="ct-nav-wrapper">
				<ul class="nav navbar-nav" style="position:relative;left:75px;">
					<li><a href="diffdest">Destinations</a></li>
					<li><a href="diffpackage">Packages</a></li>
					<li><a	href="diff">Suppliers</a></li>
					

				</ul>
			</div>
			<div class="ct-connect">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="usersignup"><i class="fa fa-user-plus"
							aria-hidden="true"></i></a></li>
					<li><a href="login"><i class="fa fa-sign-in"
							aria-hidden="true"></i></a></li>
				
				</ul>
			</div>

		</div>

	</nav>

</html>