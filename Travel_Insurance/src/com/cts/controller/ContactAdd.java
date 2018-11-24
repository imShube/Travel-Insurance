package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.dao.ContactImpt;
import com.cts.pojo.Contact;

public class ContactAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
       // String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        Long mobile = Long.parseLong(request.getParameter("phone"));
        String message = request.getParameter("message");
        Contact c=new Contact(firstname, email,mobile , message);
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        PrintWriter out=response.getWriter();
        ContactImpt ul=new ContactImpt();
        int result=ul.insertContact(c);
        out.println("<html><head><body>");
		if(result<=0)
		{
			System.out.println("Not Inserted!!");
			rd.include(request,response);
			out.println("<h1>Sorry there was an error sending your message.</h1>");
		}
		else
		{
			System.out.println("Inserted!!");
			rd.include(request,response);
			out.println("<h1>Your message is sent successfully!!!</h1>");
		}
		 out.println("</html></head></body>");
	}

}
