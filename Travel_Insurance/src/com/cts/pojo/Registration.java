package com.cts.pojo;

	import java.sql.Date;

	public class Registration {
		Integer regid;
		String firstname;
		String lastname;
		String destination;
		Date startdate;
		Date enddate;
		Long mobile;
		String policyname;
		String nominee;
		Double amount;
		String address;
		String city;
		Double pincode;
		String state;
		String country;
		Integer userid;
		
		
		
		
		public Integer getRegid() {
			return regid;
		}
		public void setRegid(Integer regid) {
			this.regid = regid;
		}
		public Integer getUserid() {
			return userid;
		}
		public void setUserid(Integer userid) {
			this.userid = userid;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getDestination() {
			return destination;
		}
		public void setDestination(String destination) {
			this.destination = destination;
		}
		public Date getStartdate() {
			return startdate;
		}
		public void setStartdate(Date startdate) {
			this.startdate = startdate;
		}
		public Date getEnddate() {
			return enddate;
		}
		public void setEnddate(Date enddate) {
			this.enddate = enddate;
		}
		public Long getMobile() {
			return mobile;
		}
		public void setMobile(Long mobile) {
			this.mobile = mobile;
		}
		public String getPolicyname() {
			return policyname;
		}
		public void setPolicyname(String policyname) {
			this.policyname = policyname;
		}
		public String getNominee() {
			return nominee;
		}
		public void setNominee(String nominee) {
			this.nominee = nominee;
		}
		public Double getAmount() {
			return amount;
		}
		public void setAmount(Double amount) {
			this.amount = amount;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public Double getPincode() {
			return pincode;
		}
		public void setPincode(Double pincode) {
			this.pincode = pincode;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		public Registration(String firstname, String lastname, String destination,
				Date startdate, Date enddate, Long mobile, String policyname,
				String nominee, Double amount, String address, String city,
				Double pincode, String state, String country,Integer userid) {
			super();
			this.firstname = firstname;
			this.lastname = lastname;
			this.destination = destination;
			this.startdate = startdate;
			this.enddate = enddate;
			this.mobile = mobile;
			this.policyname = policyname;
			this.nominee = nominee;
			this.amount = amount;
			this.address = address;
			this.city = city;
			this.pincode = pincode;
			this.state = state;
			this.country = country;
			this.userid=userid;
		}
		
		public Registration() {
			// TODO Auto-generated constructor stub
		}
		
		
	}

	
   
   
   

 
