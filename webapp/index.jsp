<%@page import="com.java.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
	
<link href="css/NewFile.css" rel="stylesheet" type="text/css" />
<style>
.banner-back {
	clip-path: polygon(50% 0%, 100% 0, 100% 90%, 68% 99%, 22% 93%, 0 100%, 0 0);
}
</style>
</head>
<body>
	<%@include file="Navbar.jsp"%>
	<!-- banner -->
	<div class="container-fluid m-0 p-0">
		<div class="jumbotron banner-back primary-background">
			<div class="container">
				<h3 class="display-7">Welcome To Code Block</h3>
				<p>The dictionary meaning of advance is a forward movement or a
					development or improvement and the meaning of improve means thing
					that makes something better. All in all, we have to improve our
					basic knowledge to master in that particular field. Java is divided
					into two parts i.e. Core Java (J2SE) and Advanced Java (JEE). The
					core Java part covers the fundamentals (data types, functions,
					operators, loops, thread, exception handling, etc.) of the Java
					programming language. It is used to develop general purpose</p>
				<button class="btn btn-outline-danger btn-lg">
					<span class="fa fa-external-link"></span>Try! Its Free
				</button>
				<a href="Login.jsp" class="btn btn-outline-primary btn-md"><span
					class="fa fa-user-circle fa-spin"></span>Login</a>
			</div>
		</div>
	</div>
	<div class="cotainer-fluid ml-5 mr-5 p-0 mt-0">
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card">

						<div class="card-body">
							<h5 class="card-title">Advance Java</h5>
							<h7 class="card-text">Some quick example text to build on
							the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card">

						<div class="card-body">
							<h5 class="card-title">Advance C++</h5>
							<h7 class="card-text">Some quick example text to build on
							the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card mr-5">

						<div class="card-body">
							<h5 class="card-title">C#</h5>
							<h7 class="card-text">Some quick example text to build on
							the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card">

						<div class="card-body">
							<h5 class="card-title">Advance Java</h5>
							<h7 class="card-text">Some quick example text to build on
							the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card">

						<div class="card-body">
							<h5 class="card-title">Advance C++</h5>
							<h7 class="card-text">Some quick example text to build on
							the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="container ml-5">
					<div class="card mr-5">

						<div class="card-body">
							<h5 class="card-title">C#</h5>
							<h7 class="card-text mb-2">Some quick example text to build
							on the</h7>
							<a href="#" class="btn btn-primary">Learn More!</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
		<script src="js/myjas.js" type="text/javascript"></script>
</body>
</html>
