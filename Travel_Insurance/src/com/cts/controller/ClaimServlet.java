package com.cts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cts.util.DButil;

public class ClaimServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String policyNo = request.getParameter("policyno");
		String name = request.getParameter("name");
		String contactNo = request.getParameter("contactno");
		String message = request.getParameter("message");
		Integer loginId=(Integer)request.getSession().getAttribute("loginId");
		Connection con = DButil.getConnection();
		RequestDispatcher rd=request.getRequestDispatcher("premium.jsp");
		PrintWriter pw=response.getWriter();
		pw.println("<html><head><body>");
		try {
			PreparedStatement ps = con
					.prepareStatement("insert into claim (policyno,name,contactno,message,userid)values('"
							+ policyNo
							+ "','"
							+ name
							+ "','"
							+ contactNo
							+ "','" 
							+ message
							+ "','"
							+ loginId
							+ "')");
			int res=ps.executeUpdate();
			if(res<=0)
			{			
				pw.println("<h2>Claimed Succesfully</h2>");
				rd.forward(request, response);
				System.out.println("data inserted sucessfully");
			}
			else
			{
				rd.forward(request, response);
				pw.println("<h2>Claimed Not Completed</h2>");
				pw.println("</body></head></html>");
			}			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
