<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry ! Something went wrong..........</title>
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
<div class="container text-center" >
	<img alt="notfound" src="image/Screenshot(1235).png" class="img-fluid">
	<%= exception %>
	<a href="index.jsp"class="btn primary-background btn-lg text-white mt-3">Home</a>

</div>
</body>
</html>