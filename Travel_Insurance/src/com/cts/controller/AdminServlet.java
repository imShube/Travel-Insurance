package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		//RequestDispatcher rd=request.getRequestDispatcher("")
		
		HttpSession session=req.getSession(true);
		RequestDispatcher rd=req.getRequestDispatcher("viewusers.jsp");
		try {
			String empid = req.getParameter("empid");
			String password = req.getParameter("password");
					
			resp.setContentType("text/html");
			out.println("<html><head><body>");
			
			session.setAttribute("password",password);
			
			if (empid.equals("701744")&&password.equals("admin")) {
				out.println("<h2>Hi Admin!</h2>");			
				resp.sendRedirect("viewusers.jsp");				
				out.print("<p align='center'>Incorrect User Details</p>");
				
			} else {
				out.print("<p align='center'>Incorrect User Details</p>");
			}
			out.println("</body></head></html>");
		} catch (Exception e) { 
			out.print("<p align='center'>Please enter Valid Details</p>");

		}
	}

}
