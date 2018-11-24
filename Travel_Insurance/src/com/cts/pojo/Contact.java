package com.cts.pojo;

public class Contact {
     String FirstName;
    // String LastName;
     String Email;
     Long Phone; 
     String Message;
	public Contact(String firstName, String email,
			Long phone, String message) {
		super();
		FirstName = firstName;
		//LastName = lastName;
		Email = email;
		Phone = phone;
		Message = message;
	}
	public Contact() {
		// TODO Auto-generated constructor stub
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Long getPhone() {
		return Phone;
	}
	public void setPhone(Long phone) {
		Phone = phone;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
     
     
}
