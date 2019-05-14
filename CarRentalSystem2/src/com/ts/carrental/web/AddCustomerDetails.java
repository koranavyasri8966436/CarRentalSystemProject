package com.ts.carrental.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.carrental.dao.CustomerDao;
import com.ts.carrental.dto.Customer;

@WebServlet("/AddCustomerDetails")
public class AddCustomerDetails extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		int cId = (int) session.getAttribute("cId");
		String cAddress = request.getParameter("cAddress");	
		String  cPhoneno= request.getParameter("cPhoneno");
		String cLicenseNo = request.getParameter("cLicenseNo");
		CustomerDao customerDao = new CustomerDao();
		Customer customer = customerDao.getCustomer(cId);
		customer.setcAddress(cAddress);
		customer.setcPhoneno(cPhoneno);
		customer.setcLicenseNo(cLicenseNo);
		int x = customerDao.update(customer);
		if(x > 0){
			RequestDispatcher rd = request.getRequestDispatcher("CustomerHome.jsp");
			rd.include(request, response);
			out.println("<h3><CENTER>Thanks for details...</CENTER></H3>");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
