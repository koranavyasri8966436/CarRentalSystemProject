package com.ts.carrental.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.carrental.dao.CarDao;
import com.ts.carrental.dao.RentDao;
import com.ts.carrental.dto.Car;
import com.ts.carrental.dto.Rent;


@WebServlet("/Rating")
public class Rating extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int rating = Integer.parseInt(request.getParameter("star"));
		HttpSession session = request.getSession(false);
		int receiptNo = Integer.parseInt((String) (session.getAttribute("receiptNo")));
		RentDao rentDao = new RentDao();
		Rent rent = rentDao.getRent(receiptNo);
		rent.setRating(rating);
		rentDao.update(rent);
		Car car = rent.getCar();	
		car.setRating(rating);
		CarDao carDao = new CarDao();
		carDao.update(car);
		RequestDispatcher rd = request.getRequestDispatcher("CustomerHome.jsp");
		rd.include(request, response);
	    out.println("<h3><CENTER>Thankyou for rating.....</CENTER></H3>");
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
