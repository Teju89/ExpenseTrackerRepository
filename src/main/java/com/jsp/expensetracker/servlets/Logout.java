package com.jsp.expensetracker.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1. Access Session object
		 * 2. Session is null or not
		 * 3. Destroy session
		 * 4. Perform servlet chaining to display login page
		 */
		HttpSession session = request.getSession();
		if(session.getAttribute("userInfo") != null) {
			session.invalidate();
			response.sendRedirect("login.jsp");
		}
	}
}







