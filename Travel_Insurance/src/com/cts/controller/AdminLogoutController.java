package com.cts.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xerces.internal.impl.dv.xs.DayDV;


public class AdminLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//first login git
		HttpSession s=request.getSession(false);
		String password=(String)s.getAttribute("password");
		System.out.println("Admin Activity");
		System.out.println(password+"  "+new Date(s.getCreationTime())+"  "+s.getLastAccessedTime());
		s.invalidate();
		response.sendRedirect("admin.jsp");
	}

}
