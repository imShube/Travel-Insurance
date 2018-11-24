package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cts.pojo.*;
import com.cts.util.DButil;

 

  public class RegistrationDaoImp{
	int result=0;
	   PreparedStatement pst,pst1;
	  
	public int insertReg(Registration r,int loginId)
	  {
		 
		System.out.println(r.getCity());
		   	try{
			 //pst = Dbutil.connect().prepareStatement("insert into registration values('"+r.getFirstname()+"','"+r.getLastname()+"','"+r.getDestination()+"','"+r.getStartdate()+"','"+r.getEnddate()+"','"+r.getMobile()+"','"+r.getPolicyname()+"','"+r.getNominee()+"','"+r.getAmount()+"','"+r.getAddress()+"','"+r.getCity()+"','"+r.getPincode()+"','"+r.getState()+"','"+r.getCountry()+"')");  
		   	pst = DButil.getConnection().prepareStatement("insert into registration values(default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		   	pst1=DButil.getConnection().prepareStatement("select * from registration order by registration_id desc limit 1");
		   	
		   	pst.setString(1,r.getFirstname());
			pst.setString(2,r.getLastname());
			pst.setString(3, r.getDestination());
			pst.setDate(4,r.getStartdate());
			pst.setDate(5, r.getEnddate());
			pst.setString(6,  r.getMobile().toString());
			pst.setString(7, r.getPolicyname());
			pst.setString(8, r.getNominee());
			pst.setString(9, r.getAmount().toString());
			pst.setString(10, r.getAddress());
			pst.setString(11, r.getCity());
			pst.setString(12, r.getPincode().toString());
			pst.setString(13, r.getState());
			pst.setString(14, r.getCountry());
			pst.setInt(15, loginId);
		   	result = pst.executeUpdate();
		   	ResultSet rs=pst1.executeQuery();
		   	if(result>=0)
		   	{
		   		if(rs.next())
		   		{
		   			return rs.getInt(1);
		   		}
		   	}
			 DButil.getConnection().close();		  
		   	}
		   	catch(Exception e)
		   	{
		   		System.out.println(e);
		   	}
		   	 
		   		return result;  
	  }
	
	
	public static List<Registration> getAllRegForms()
	{
		List<Registration> registrationList=new ArrayList<>();
		try
		{
			Connection con=DButil.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from registration");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Registration r=new Registration();
				r.setRegid(rs.getInt(1));
				r.setFirstname(rs.getString(2));
				r.setDestination(rs.getString(4));
				r.setStartdate(rs.getDate(5));
				r.setMobile(rs.getLong(7));
				r.setCity(rs.getString(12));
				r.setUserid(rs.getInt(16));
				registrationList.add(r);
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return registrationList;
	}
}
