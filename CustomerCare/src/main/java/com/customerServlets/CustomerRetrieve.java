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

@WebServlet("/CustomerRetrieve")
public class CustomerRetrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
}

