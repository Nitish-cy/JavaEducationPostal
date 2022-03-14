<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/NewFile.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@include file="Navbar.jsp"%>
	<br>
	<main class="d-flex align-items-center" 
		style="height: 85vh">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-header primary-background text-center">
							<h3>
								<b><span class="fa fa-user p-1"></span>Register Here ! 
							</h3>
							</p>
						</div>
						<div class="card-body">
							<form id="regform" action="RegisterServlet" method="POST">
								<div class="form-group">
									<label for="exampleInputText">Name</label> <input type="text"
										autocomplete="false" class="form-control" id="exampleInputName" name="user_name"
										aria-describedby="emailHelp">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										autocomplete="false" type="email" class="form-control" id="exampleInputEmail1"
										name="user_email" aria-describedby="emailHelp">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										autocomplete="false" type="password" class="form-control" name="user_password"
										id="exampleInputPassword1">
								</div>
								<div class="form-group">
									<label for="exampleInputRadio">Select Gender</label> <br>
									<input type="radio" name="gender" id="gender"
										aria-describedby="emailHelp">Male <input name="gender"
										type="radio" id="gender" aria-describedby="emailHelp">Female
								</div>
								<div class="form-group">
									<textarea rows="2" class="form-control" cols="5" name="about"
										autocomplete="false" placeholder="Write siomething about yoursef"></textarea>
								</div>
								<div class="form-group form-check">
									<input type="checkbox" class="form-check-input" name="check"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Agree Terms and Condition</label>
								</div>
								<div class="container text-center" id="loader"
									style="display: none;">
									<span class="fa fa-refresh fa-spin fa-2x"></span> <br>
									<h7>Please wait.......</h7>
								</div>
								<button id="subbtn" type="submit" class="btn btn-primary">Sign
									Up</button>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

	</main>

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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script>
		$(document).ready(function() {
			console.log("Loaded..............")
			$('#regform').on('submit', function(event) {
				event.preventDefault();
				let form = new FormData(this);
				//before sending data to server hide btn and show refresh icon 
				$("#subbtn").hide();
				$("#loader").show();
				//send register servlet
				
				$.ajax({
					url : "RegisterServlet",
					type : 'POST',
					data : form,
					//success: function(data,textStatus)
					success : function(data, textStatus, jqXHR) {

						console.log(data)
						//show button and hide loader after inserting data
						$("#subbtn").show();
						$("#loader").hide();
						swal("Registration Successfully .... We are redirecting to login page")
						.then((value) => {
						  //swal(`The returned value is: ${value}`);
						  window.location="Login.jsp"
						});
					},
					error : function(jqXHR, textStatus, errorThrow) {
						console.log(jqXHR)
						$("#subbtn").show();
						$("#loader").hide();

					},
					processData : false,
					contentType : false
				})
			});
		});
	</script>
</body>
</html>
