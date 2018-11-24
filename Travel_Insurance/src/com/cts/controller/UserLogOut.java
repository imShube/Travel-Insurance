package com.cts.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserLogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(false);
		String name=(String)s.getAttribute("username");
		Integer loginId=(Integer)s.getAttribute("loginId");
		System.out.println("User Activity");
		System.out.println(name+" "+loginId+"  "+new Date(s.getCreationTime())+"  "+s.getLastAccessedTime());
		s.invalidate();
		response.sendRedirect("signup.jsp");
	}

}
