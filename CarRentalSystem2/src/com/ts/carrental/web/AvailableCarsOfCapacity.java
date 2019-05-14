package com.ts.carrental.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.carrental.dao.CarDao;
import com.ts.carrental.dto.Car;

@WebServlet("/AvailableCarsOfCapacity")
public class AvailableCarsOfCapacity extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		PrintWriter out = response.getWriter();		
		CarDao carDao = new CarDao();
		List<Car> arrayList = carDao.getAvailableCarsOfCapacity(capacity);
		request.setAttribute("carsData", arrayList);
		
			RequestDispatcher rd = request.getRequestDispatcher("AvailableCarsToBook.jsp");
			rd.forward(request, response); 
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
