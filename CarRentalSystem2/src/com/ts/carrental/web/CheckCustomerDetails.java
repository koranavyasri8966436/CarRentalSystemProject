package com.ts.carrental.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.carrental.dao.CustomerDao;
import com.ts.carrental.dto.Customer;


@WebServlet("/CheckCustomerDetails")
public class CheckCustomerDetails extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		int cId = (int) session.getAttribute("cId");
		CustomerDao customerDao = new CustomerDao();
		Customer customer = customerDao.getCustomer(cId);
		String cPhoneno = customer.getcPhoneno();
		if(cPhoneno.equals("not given")){
			RequestDispatcher rd = request.getRequestDispatcher("AskCustomerDetails.jsp");
			rd.include(request, response);
		}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("AskCapacity.jsp");
			rd.include(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
