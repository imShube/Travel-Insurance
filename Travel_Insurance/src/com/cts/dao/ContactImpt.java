package com.cts.dao;
import com.cts.pojo.*;
import com.cts.util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class ContactImpt {
	int result=0;

public int insertContact(Contact c)
{
	try
	{
		PreparedStatement pst=DButil.getConnection().prepareStatement("insert into contact values('"+c.getFirstName()+"','"+c.getEmail()+"',"+c.getPhone()+",'"+c.getMessage()+"')");
		result = pst.executeUpdate();
		DButil.getConnection().close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return result;
}

public static int delete(Contact c){
	int status=0;
	try{
		System.out.println("name : "+c.getFirstName());
		Connection con=DButil.getConnection();
		PreparedStatement pst=con.prepareStatement("delete * from contact where firstname=?");
		pst.setString(1,c.getFirstName());
		status=pst.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}

public static List<Contact> getAllFeedback(){
	List<Contact> clist=new ArrayList<Contact>();
	try
	{
		Connection cn=DButil.getConnection();
		PreparedStatement ps=cn.prepareStatement("select * from contact");
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			Contact cc=new Contact();
			cc.setFirstName(rs.getString("firstname"));
			//cc.setLastName(rs.getString("lastname"));
			cc.setEmail(rs.getString("email"));
			cc.setPhone(Long.parseLong(rs.getString("phone")));
			cc.setMessage(rs.getString("message"));
			clist.add(cc);
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return clist;
	}
}
