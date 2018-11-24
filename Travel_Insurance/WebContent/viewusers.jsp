<!DOCTYPE html>

<%@page import="com.cts.dao.RegistrationDaoImp"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.cts.dao.ContactImpt"%>
<%@page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>


<body>
<%
HttpSession s=request.getSession(false);
String name=(String)s.getAttribute("password");
%>

 
  <form align="right" name="form1" method="get" action="AdminLogoutController">
  	<label>
  		<h3> Hii <%=name%></h3><br>
  		<input name="submit2" type="submit" id="submit2" value="log out">
  	</label>
  </form>
 
 
 
<%@page import="com.cts.dao.UserDao,com.cts.dao.ContactImpt,com.cts.pojo.*,java.sql.Date,com.cts.dao.RegistrationDaoImp,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<% if (name!=null) { %>   
   
   <%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>
<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getUserid()}</td><td>${u.getUsername()}</td><td>${u.getEmail()}</td><td>${u.getPass()}</td><td><a href="editform.jsp?id=${u.getUserid()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getUserid()}">Delete</a></td></tr>
</c:forEach>
</table>

<h1>Registration Forms</h1>
<%
List<Registration> regList=RegistrationDaoImp.getAllRegForms();
request.setAttribute("regList",regList);
%>
<table border="1" width="90%">
<tr><th>Reg Id</th><th>First Name</th><th>Destination</th><th>Start Date</th><th>Mobile</th><th>City</th><th>User ID</th></tr>
<c:forEach items="${regList}" var="re">
	<tr><td>${re.getRegid()}</td><td>${re.getFistname()}</td><td>${re.getStartdate()}</td><td>${re.getDestination()}</td><td>${re.getMobile()}</td><td>${re.getCity()}</td><td>getUserid()</td></tr>
</c:forEach>
</table>


<h1>User Feedback</h1>
<%
	List<Contact> clist=ContactImpt.getAllFeedback();
request.setAttribute("clist",clist);
%>
<table border="1" width="90%">
<tr><th>First Name</th><th>Email</th><th>Contact NO</th><th>Message</th><th>Mark As Read</th></tr>
<c:forEach items="${clist}" var="cl">
	<tr><td>${cl.getFirstName()}</td><td>${cl.getEmail()}</td><td>${cl.getPhone()}</td><td>${cl.getMessage()}</td><td><a href="deleteContact.jsp?id=${cl.getFirstName()}">Mark as Read</a></td></tr>
</c:forEach>
</table>

<h1>Claimed User</h1><br><br>
   
   
   
   
<% } else {%>
   	<%

    response.sendRedirect("admin.jsp");
%>
<% } %>



</body>
</html>