<%@page import="com.jsp.expensetracker.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="icon" href="media/logo.png">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="AddExpense/css/util.css">
    <link rel="stylesheet" type="text/css" href="AddExpense/css/main.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Add Expense</title>
    <style>
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
    </style>
</head>

<body style="overflow-y: hidden;">
	<%
		User user = (User)session.getAttribute("userInfo");
	%>
    <nav class="navbar p-0 mb-0" style="border-bottom: 4px black double;">
        <div class="container-fluid" style="background-color: plum; padding:1%">
            <a class="navbar-brand" href="index.jsp">
                <img src="media/logo.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
                <span class="fs-2 fw-bolder align-text-top"
                    style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring
                    Expenses Tracker</span>
            </a>
            <a href="Home.jsp" style="color: green;  position: absolute; right:42%; ">
                <span class="text-xxl-end" style="font-size: 40px;"><i class=" fa-solid fa-house"></i></span>
            </a>
            <div class="text-xxl-end" style="font-size: 40px; margin-right: 20px;" id="setting">
                <i class="fa-solid fa-user-gear fa-flip" style="color:black;"></i>
                <ul id="list">
                    <li><a href="UpdateProfile.jsp?userId=<%=user.getUserId()%>">Update Profile</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                   	<li><a href="Logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="contact1" style="background-image: radial-gradient( hotpink , maroon 80%);">
        <div class="container-contact1" style="background-color: rgb(164, 98, 231,0.3);">
            <div class="contact1-pic js-tilt" data-tilt>
                <img src="media/expense.png" alt="IMG">
            </div>

            <form class="contact1-form validate-form" action="AddExpense" id="add">
                <span class="contact1-form-title" style="color:black;">
                    Add Expenses
                </span>

                <div class="wrap-input1 validate-input" data-validate="Name is required">
                    <input class="input1" type="text" name="amount" placeholder="Amount">
                    <span class="shadow-input1"></span>
                </div>

                <div class="wrap-input1 validate-input">
                    <input class="input1" type="date" placeholder="Date" name="date">
                    <span class="shadow-input1"></span>
                </div>

                <div class="wrap-input1 validate-input">
                    <input class="input1" type="text" name="category" placeholder="Category" list="sub">
                    <span class="shadow-input1"></span>
                    <datalist id="sub">
                        <option>Utilities</option>
                        <option>Transportation</option>
                        <option>Groceries</option>
                        <option>Dining out</option>
                        <option>Entertainment</option>
                        <option>HealthCare</option>
                        <option>Education</option>
                        <option>Personal Care</option>
                        <option>Clothing</option>
                        <option>HomeMaintainance</option>
                        <option>Gifts&Donations</option>
                        <option>Saving&investments</option>
                        <option>Tax</option>
                        <option>Others</option>
                    </datalist>
                </div>

                <div class="wrap-input1 validate-input" data-validate="Message is required">
                    <textarea class="input1" name="description" placeholder="Description"></textarea>
                    <span class="shadow-input1"></span>
                </div>

                <div class="container-contact1-form-btn">
                    <button class="contact1-form-btn">
                        <span>
                            ADD
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </span>
                    </button>
                </div>
            </form>
            <%
            	String message = (String)request.getAttribute("msg");
            	if(message != null){
            %>
            	<h2 style="color:red;"><%= message%></h2>
            <%
            	}
            %>
        </div>
    </div>




    
    <div id="foo">
        <p style="color:white;">&copy; 2023 JSpiders. All rights reserved.</p>
    </div>
    <script>
	window.addEventListener("beforeunload", function (event) {
		// Reset the form when the user leaves the page
		document.getElementById("add").reset();
	});
	</script>
</body>

</html>