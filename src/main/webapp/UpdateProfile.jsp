<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="com.jsp.expensetracker.dao.UserDao"%>
<%@page import="com.jsp.expensetracker.dao.UserDaoImpl"%>
<%@page import="com.jsp.expensetracker.utility.SingletonClass"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jsp.expensetracker.entity.User"%>
<%@page import="com.jsp.expensetracker.service.UserServiceImpl"%>
<%@page import="com.jsp.expensetracker.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expense Tracker</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link rel="icon" href="media/logo.png">
<Style>
#foo {
	/* position: absolute;
        bottom: 0px; */
	width: 100%;
	height: 80px;
	background-color: black;
	color: white;
	display: flex;
	justify-content: center;
	align-content: center;
	flex-wrap: wrap;
}

#list {
	list-style-type: none;
	font-size: 20px;
	text-align: left;
	font-weight: bolder;
}

#list li {
	padding-bottom: 3px;
}

li a {
	text-decoration: none;
	color: black;
}

li a:hover {
	background-color: black;
	color: white;
}

#list {
	display: none;
	position: absolute;
	right: 3%;
}

#setting:hover #list {
	display: block;
}

.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	height: 790px;
}

label, input, textarea {
	display: block;
	margin-bottom: 10px;
}

input[type="file"] {
	margin-top: 10px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}

#profile-photo {
	max-width: 100%;
	height: auto;
	display: none;
}
</Style>
</head>
<body>
	<nav class="navbar p-0 mb-0" style="border-bottom: 4px black double;">
		<div class="container-fluid"
			style="background-color: plum; padding: 1%">
			<a class="navbar-brand" href=index.jsp"> <img
				src="media/logo.png" alt="Logo" width="60" height="60"
				class="d-inline-block align-text-top"> <span
				class="fs-2 fw-bolder align-text-top"
				style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring
					Expenses Tracker</span>
			</a> <a href="Home.jsp"
				style="color: green; position: absolute; right: 42%;"> <span
				class="text-xxl-end" style="font-size: 40px;"><i
					class=" fa-solid fa-house"></i></span>
			</a>
			<div class="text-xxl-end"
				style="font-size: 40px; margin-right: 20px;" id="setting">
				<i class="fa-solid fa-user-gear fa-flip" style="color: black;"></i>
				<ul id="list">
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="Logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
		int userId = Integer.parseInt(request.getParameter("userId"));
		UserService service = new UserServiceImpl();
		User user = service.findByUserId(userId);
	%>
	<div class="container">
		<h1>Update Your Profile</h1>
		<form method="POST" enctype="multipart/form-data" action="UpdateProfile">
			
			
			<label for="username">Username:</label> 
			<input type="text" id="username" name="username" required value=<%= user.getUsername()%>> 
			
			<label>FullName</label>
			<input type="text"  name="fullname" required  value=<%= user.getFullname()%>>	
			
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required value=<%= user.getEmail()%>> 
			
			<label for="bio">Mobile:</label>
			<input  name="mobile" required value=<%= user.getMobile()%>></input>

			<label for="bio">Password:</label> 
			<input id="bio" name="password" required type="password" value=<%= user.getPassword()%>></input> 
			
			<label>Profile Photo:</label> 
			<input type="file" id="fileInput" accept="image/*"  name="imageFile"> 
			
			<!-- code to display an image if present in db -->
			<%
				byte byteArray[] = service.getUserProfileImage(userId);
				if(byteArray != null){
					String image = Base64.getEncoder().encodeToString(byteArray);
			%>
				<img id="displayImage" src="data:image/jpg;base64,<%= image%>" width = "200" height="200"
				style="border-radius:100%">
			<% 
				}
				else{
			%>
				<img id="displayImage" width = "200" height="200" style="border-radius:100%; background-image: url('media/user.png'); background-size: 100%">
			<%
				}
			%>
			
			
			<input name="id" value=<%= user.getUserId()%> type="number" hidden>
			<br>
			<button>Update Profile</button>
		</form>
	</div>
		<script>
		const fileInput = document.getElementById("fileInput");
		const displayImage = document.getElementById("displayImage");

		fileInput.addEventListener("change", function() {
			const file = fileInput.files[0];
			if (file && file.type.startsWith("image/")) {
				const reader = new FileReader();
				reader.onload = function(e) {
					displayImage.src = e.target.result;
					displayImage.style.display = "block";
				};
				reader.readAsDataURL(file);
			}
		});
	</script>

	<div id="foo">
		<p style="color: white;">&copy; 2023 JSpiders. All rights
			reserved.</p>
	</div>
</body>
</html>




















