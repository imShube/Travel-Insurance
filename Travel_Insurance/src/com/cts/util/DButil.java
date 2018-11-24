package com.cts.util;
import java.sql.Connection;
import java.sql.DriverManager;
public class DButil {
static Connection con=null;
public static Connection getConnection()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/travel","root","root");
	}
	catch(Exception e){
		System.out.println("DBUTIL "+e);
	}
	return con;
}
}
