package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.dao.RegistrationDaoImp;
import com.cts.pojo.Registration;

public class RegistrationAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String destination = request.getParameter("destination");
		Date startdate =Date.valueOf(request.getParameter("startdate"));
		Date enddate = Date.valueOf(request.getParameter("enddate"));
		Long mobile = Long.parseLong(request.getParameter("mobile"));
		String policyname = request.getParameter("policyname");
		String nominee = request.getParameter("nominee");
		Double amount = Double.parseDouble(request.getParameter("amount"));
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		Double pincode = Double.parseDouble(request.getParameter("pincode"));
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		
		Registration r = new Registration();
		r.setFirstname(firstname);
		r.setLastname(lastname);
		r.setDestination(destination);
		r.setStartdate(startdate);
		r.setEnddate(enddate);
		r.setMobile(mobile);
		r.setPolicyname(policyname);
		r.setNominee(nominee);
		r.setAmount(amount);
		r.setAddress(address);
		r.setCity(city);
		r.setPincode(pincode);
		r.setState(state);
		r.setCountry(country);
		 
		RegistrationDaoImp rdi = new RegistrationDaoImp();
		int result=0; 
		
		int loginId=(Integer)request.getSession().getAttribute("loginId");
		
		result = rdi.insertReg(r,loginId);
		 
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		 
		if(result<=0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("regIndex.jsp");
			out.println("<h3>Registration unsuccessfull</h3>");
			rd.include(request,response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("premium.jsp");
			out.print("<h5><font color='green'>Registration successfull Your Policy Id:</font></h5>"+result);
			rd.include(request,response);
		}
	}

}
