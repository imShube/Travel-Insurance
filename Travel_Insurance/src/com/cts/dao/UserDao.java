package com.cts.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.cts.util.*;

import com.cts.pojo.User;

public class UserDao {
	
	public static User validateUser(User pObject){
		int flag=0;
		User u=null;
		try {
			Connection con = DButil.getConnection();
			  PreparedStatement ps = con.prepareStatement("select * from userdetails where email=? and password=?");
			  ps.setString(1, pObject.getEmail());
			  ps.setString(2, pObject.getPass());
			  ResultSet rs = ps.executeQuery();
			  
	          if(rs.next())
	          {
	        	  u=new User(rs.getInt(1),rs.getString(2));
	        	  return u;
	          }
		}
		catch(Exception e)
		{
			System.out.println("Login not successfu:"+e);
		}
		return u;
	}
	
	public static int save(User pObject){
		int flag=0;
		try {
			Connection con=DButil.getConnection(); //getting the connection method here from dbconnection
			PreparedStatement ps = con
					.prepareStatement("insert into userdetails values(default,?,?,?);");
		
			ps.setString(1, pObject.getUsername());//sending up the values received from user to the database table
			ps.setString(2, pObject.getEmail());
			ps.setString(3, pObject.getPass());
			System.out.println("error insid  user dao");
			flag=ps.executeUpdate(); //value changes if it is executed
			System.out.println("error inside user dao");
			con.close();
		} catch (Exception e) {
		System.out.println("cannot able to insert");
		}
		return flag;
		
	}
	
	
	public static int update(User u){
		int status=0;
		try{
			Connection con=DButil.getConnection();
			System.out.println("upadte here:"+u.getUserid());
			PreparedStatement ps=con.prepareStatement("update userdetails set username=?,email=?,password=? where userid=?");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPass());
			ps.setInt(4, u.getUserid());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	public static int delete(User u){
		int status=0;
		try{
			Connection con=DButil.getConnection();
			System.out.println("delete inside:"+u.getUserid());
			PreparedStatement ps=con.prepareStatement("delete * from userdetails where userid=?");
			
			ps.setInt(1,u.getUserid());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con=DButil.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from userdetails");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				u.setUserid(rs.getInt("userid"));
				u.setUsername(rs.getString("username"));
				u.setPass(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				list.add(u);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	public static User getRecordById(int id){
		User u=new User();
		try{
			System.out.println(id);
			Connection con=DButil.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from userdetails where userid=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				System.out.println();
				u.setUserid(rs.getInt("userid"));
				u.setUsername(rs.getString("username"));
				u.setEmail(rs.getString("email"));
				u.setPass(rs.getString("password"));
			}
		}catch(Exception e){System.out.println(e);}
		return u;
	}
}
