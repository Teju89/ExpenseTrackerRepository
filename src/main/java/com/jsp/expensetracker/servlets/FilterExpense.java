package com.jsp.expensetracker.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.expensetracker.entity.Expense;
import com.jsp.expensetracker.entity.User;
import com.jsp.expensetracker.service.ExpenseService;
import com.jsp.expensetracker.service.ExpenseServiceImpl;

@WebServlet("/FilterExpense")
public class FilterExpense extends HttpServlet {
	private ExpenseService service = new ExpenseServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String date = request.getParameter("date");
		String category = request.getParameter("category");
		String amount = request.getParameter("amount");
		User user = (User)request.getSession().getAttribute("userInfo");
		
			if(!category.equals("category")) {
				System.out.println("category is " + category);
				
				//System.out.println(service.filterExpenseByCategory(category, user.getUserId()));
				List<Expense> filterExpenseByCategory = service.filterExpenseByCategory(category, user.getUserId());
				
				request.setAttribute("list", filterExpenseByCategory);
			}
			else if (!amount.equals("-Select-")) {
				String [] arr = amount.split("-");
				int start = Integer.parseInt(arr[0]);
				int end = Integer.parseInt(arr[1]);
				List<Expense> filterExpenseByAmountRange = service.filterExpenseByAmountRange(start, end, user.getUserId());
				System.out.println(filterExpenseByAmountRange);
				request.setAttribute("list", filterExpenseByAmountRange);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewExpense.jsp");
			dispatcher.include(request, response);
		
	}

}












