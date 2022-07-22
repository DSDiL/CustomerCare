package com.customerServlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customerModel.CustomerDBUtil;
import com.customerModel.customer;

@WebServlet("/CustomerDelete")
public class CustomerDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteCustomer(id);
		
		if (isTrue==true) {
			
			try {
				List<customer> customer = CustomerDBUtil.getAllInventory();
				request.setAttribute("customer", customer);	 	
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("customerRetrieve.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("customerRetrieve.jsp");
			dis.forward(request, response);
		}
	}

}
