package com.cts.pojo;

public class User {
	private int userid;
	private String username;
	private String email;
	private String pass;
	
	public User(int userid, String username, String email, String pass) {
		super();
		this.userid = userid;
		this.username = username;
		this.email = email;
		this.pass = pass;
	}
	
	
	
	
	public User(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
	}




	public User(String username, String email, String pass) {
		super();
		this.username = username;
		this.email = email;
		this.pass = pass;
	}




	public User(int userid, String username) {
		super();
		this.userid = userid;
		this.username = username;
	}




	public User() {
		super();
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	

}
