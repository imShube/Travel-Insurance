package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cts.dao.UserDao;

import com.cts.pojo.User;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		RequestDispatcher rd=req.getRequestDispatcher("premium.jsp");
		try {
			String email = req.getParameter("email");
			String pass = req.getParameter("pass");
			HttpSession session=req.getSession(true);
			User pObject1 = new User(email, pass);
			User u = UserDao.validateUser(pObject1);
			System.out.println(u.getUserid());
			if (u!=null) {
				out.print("<h2> align='center'>Log in Successfuly</h2>");
				session.setAttribute("loginId", u.getUserid());
				session.setAttribute("username",u.getUsername());
				rd.forward(req, resp);
			} 
			
			else 
			{
				out.print("<p align='center'>Incorrect User Details</p>");
			}
		} catch (Exception e) { 
			out.print("<p align='center'>Please enter Valid Details</p>");

		}
	}

}
