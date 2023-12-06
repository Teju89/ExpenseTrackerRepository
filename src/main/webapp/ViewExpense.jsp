<%@page import="com.jsp.expensetracker.entity.User"%>
<%@page import="com.jsp.expensetracker.entity.Expense"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <link rel="icon" href="media/logo.png">
  <title>View Expenses</title>
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

    .content {
      width: 100%;
      height: 73vh;
    }

    .container {
      position: relative;
      top: 10%;
      height: 50vh;
      overflow-x: hidden;
      overflow-y: auto;
    }

    .h1 {
      text-align: center;
      font-size: 40px;
      margin-top: 2%;
      text-decoration: underline;
      text-shadow: 0px 0px 10px red;
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

<body style="overflow: hidden;">
  <nav class="navbar p-0 mb-0" style="border-bottom: 4px black double;">
    <div class="container-fluid" style="background-color: plum; padding:1%">
      <a class="navbar-brand" href="index.jsp">
        <img src="media/logo.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
        <span class="fs-2 fw-bolder align-text-top"
          style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring
          Expenses Tracker</span>
      </a>
      <a href="Home.jsp" style="color: green; position: absolute; right:42%; ">
        <span class="text-xxl-end" style="font-size: 40px;"><i class=" fa-solid fa-house"></i></span>
      </a>
      <div class="text-xxl-end" style="font-size: 40px; margin-right: 20px;" id="setting">
        <i class="fa-solid fa-user-gear fa-flip" style="color:black;"></i>
        <ul id="list">
        	<%
        		User user = (User)session.getAttribute("userInfo");
        	%>
           <li><a href="UpdateProfile.jsp?userId=<%=user.getUserId()%>">Update Profile</a></li>         
           <li><a href="#">About Us</a></li>
          <li><a href="#">Contact Us</a></li>
         	<li><a href="Logout">Logout</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="content">
    <h1 class="h1">Expenses Details</h1>
    <div class="container border border-info">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">Sr. No</th>
            <th scope="col">Date</th>
            <th scope="col">Amount</th>
            <th scope="col">Category</th>
            <th scope="col">Description</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
        	<%
        		List<Expense> listOfExpenses = (List)request.getAttribute("list");
        		if(listOfExpenses != null && !listOfExpenses.isEmpty()){
        			int a = 0;
        			for(Expense e : listOfExpenses){
        	%>
          <tr>
            <th scope="row"><%= ++a%></th>
            <td><%= e.getDate()%></td>
            <td><%= e.getAmount()%></td>
            <td><%= e.getCategory()%></td>
            <td><%= e.getDescription()%></td>
            <td>
           <a href="UpdateExpense.jsp?expenseId=<%=e.getExpenseId()%>">
              <button type="button" class="btn btn-primary" style="margin-left:3%;">Update</button>
           </a>
            <!-- URL REWriting -->
             <a href="DeleteExpense?expenseId=<%= e.getExpenseId()%>">
              <button type="button" class="btn btn-danger" style="margin-left:3%;">Delete</button>
            </a>
            </td>
          </tr>
          	<%
        			}//close forEach
        		}//close if
        		else
        		{
        	%>
        		<h1 style="color:red">No Record Found</h1>
        	<% 
        		}
        		if(request.getAttribute("sum") != null){
          	%>
          <tr>
          	<th colspan="6" style="text-align: center;">
          		Total = <%= request.getAttribute("sum")%>
          	</th>
          </tr>
          <%
          			}
          		%>
        </tbody>
      </table>

    </div>

  </div>

  <div id="foo">
    <p style="color:white;">&copy; 2023 JSpiders. All rights reserved.</p>
  </div>
</body>

</html>