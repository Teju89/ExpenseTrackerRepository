package com.jsp.expensetracker.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	
	//TODO - 1. Create Ref var of UserService and its object
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  TODO -
		 *  1. Fetch email from forgot Password jsp file
		 *  2. call forgotPassword() method from UserService interface
		 *  3. Perform Servlet chaining 
		 *  4. Transfer data
		 */
	}

}
