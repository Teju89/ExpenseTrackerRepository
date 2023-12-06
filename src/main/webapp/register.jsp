<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Expenses Tracker</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="regforma/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="regform/css/style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        * {
            box-sizing: border-box;
            padding: 0px;
            margin: 0px;
        }
    </style>
    <link rel="icon" href="media/logo.png">
</head>

<body style="overflow: hidden; background: none;">
    <nav class=" navbar bg-body-tertiary p-0 mb-0 bg-danger-subtle"
        style="border-bottom: 4px black double; position: absolute; top:0%; width: 100%;">
        <div class="container-fluid" style="background-color: plum; padding: 1%;">
            <a class="navbar-brand" href="index.jsp">
                <img src="media/logo.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
                <span class="fs-2 fw-bolder align-text-top"
                    style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring Expenses
                    Tracker</span>
            </a>
        </div>
    </nav>
    <Center>
        <div class="main" style="width: 58%;">
            <section class="signup" style="margin-top: 5%; ">
                <!-- <img src="images/signup-bg.jpg" alt=""> -->
                <div class="container">
                    <div class="signup-content"
                        style="padding: 2%;border: black 3px solid; background-image: url('media/data-analysis.gif'); background-size: cover; background-position: center;">
                        
                        <form method="POST" id="signup-form" class="signup-form" action="Registration" id="register">
                            <h2 class="form-title fw-bolder fs-5">Create account</h2>
                            <div class="form-group">
                                <input type="text" class="form-input" name="fullname" id="name" 
                                placeholder="Your FullName" required/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="username" id="username"
                                    placeholder="Your Username" required/>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input" name="email" id="email"
                                    placeholder="Your Email" required/>
                            </div>
                            <div class="form-group">
                                <input type="number" class="form-input" name="mobile" id="mobile"
                                    placeholder="Your Mobile" required/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="password" id="password"
                                    placeholder="Password" required/>
                                <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="cpassword" id="re_password"
                                placeholder="Repeat your password" required/>
                            </div>
                            <div class="form-group" style="border:1px solid black;">
                                <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up" />
                            </div>
                        </form>
                        <p class="loginhere" style="margin-top : 20px;color:aqua">
                            Have already an account ? <a href="login.jsp" class="loginhere-link"
                                style="color:aquamarine">Login here</a>
                        </p>
                    </div>
                </div>
            </section>

        </div>
    </Center>
    <script>
	window.addEventListener("beforeunload", function (event) {
		// Reset the form when the user leaves the page
		document.getElementById("register").reset();
	});
	</script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
