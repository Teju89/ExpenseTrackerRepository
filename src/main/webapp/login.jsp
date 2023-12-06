
<%@page import="com.jsp.expensetracker.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Expenses Tracker</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" href="media/logo.png">
	<!--===============================================================================================-->
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v5/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->


	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v5/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v5/css/main.css">
	<!--===============================================================================================-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	
</head>

<body style="overflow: hidden;">

		
					<%
					User user = (User)session.getAttribute("userInfo");
					if(user != null){
						response.sendRedirect("Home.jsp");
					}
					//to retrieve data - transferred from servlet class
					String message = (String) request.getAttribute("msg"); //downcasting
					if (message != null) {
					%>
						<script>
							alert("<%= message%>");
						</script>
					<%
					}
					message = null;
					
					//Reset the form - assignment
					%>



	<nav class="navbar p-0 mb-0" style="border-bottom: 4px black double;">
		<div class="container-fluid" style="background-color: plum; padding:1%">
			<a class="navbar-brand" href="index.jsp">
				<img src="media/logo.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
				<span class="fs-2 fw-bolder align-text-top"
					style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring
					Expenses Tracker</span>
			</a>
		</div>
	</nav>
	<div class="limiter" style="position: relative; bottom:1%;">
		<div class="container-login100" style="background-image: linear-gradient(lightGrey 30%, plum);">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-20 p-b-33" style="position: absolute; top:4%;">
				<form class="login100-form validate-form flex-sb flex-w" action="Login"
				method="post" id="login">
					<span class="login100-form-title p-b-30">
						Sign In With
					</span>

					<a href="https://www.facebook.com" class="btn-face m-b-20" target="_blank">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="https://accounts.google.com/v3/signin/identifier?authuser=0&continue=https%3A%2F%2Fmyaccount.google.com%2F&ec=GAlAwAE&hl=en&service=accountsettings&flowName=GlifWebSignIn&flowEntry=AddSession&dsh=S1778764585%3A1695386785307034&theme=glif"
						class="btn-google m-b-20" target="_blank">
						<img src="Login_v5/images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a>

					<div class="p-t-20 p-b-9">
						<span class="txt1">
							Username
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<input class="input100" type="text" name="username">
						<span class="focus-input100"></span>
					</div>

					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							Forgot?
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Sign In
						</button>
					</div>
					
					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span>

						<a href="register.jsp" class="txt2 bo1">
							Sign up now
						</a>
					</div>
				</form>
			</div>
		</div>
		
	</div>
	<script>
	window.addEventListener("beforeunload", function (event) {
		// Reset the form when the user leaves the page
		document.getElementById("login").reset();
	});
	</script>	
</body>

</html>










