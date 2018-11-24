package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.dao.UserDao;

import com.cts.pojo.User;

public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
		try {
			
			String username = req.getParameter("username");
			String email = req.getParameter("email");
			String pass = req.getParameter("pass");
			// getting all the values from index.jsp

			User pObject=new User(username, email, pass);
			
			int checkFlag = UserDao.save(pObject);
			
			if (checkFlag != 0) {
				out.print("<h2 align='center'>Sign Up is Successful! Login Now</h2>"); 
				
				rd.forward(req, resp);

			} else {
				out.print("<p align='center'>Invalid User Details</p>");
				req.getRequestDispatcher("index.jsp").include(req, resp);

			}
		} catch (Exception e) { 
			//System.out.println("error inside sign up servlet");
			out.print("<p align='center'>Please enter Valid Details</p>");
			//System.out.println("error inside sign up servlet");
			req.getRequestDispatcher("index.jsp").include(req, resp);
		}
	}

}
