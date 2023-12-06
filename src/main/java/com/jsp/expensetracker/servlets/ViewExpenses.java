package com.jsp.expensetracker.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.expensetracker.entity.Expense;
import com.jsp.expensetracker.entity.User;
import com.jsp.expensetracker.service.ExpenseService;
import com.jsp.expensetracker.service.ExpenseServiceImpl;

@WebServlet("/ViewExpenses")
public class ViewExpenses extends HttpServlet {
	private ExpenseService expenseService = new ExpenseServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Fetch USer object from Session
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("userInfo");
		
		List<Expense> listOfExpense = expenseService.viewExpense(user.getUserId());
		
		request.setAttribute("list", listOfExpense);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewExpense.jsp");
		dispatcher.include(request, response);
	}

}

























