<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.cts.dao.UserDao,com.cts.pojo.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
<input type="text" name="id" value="<%=u.getUserid() %>"/>
<table>
<tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getUsername()%>"/></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPass()%>"/></td></tr>

<tr><td colspan="2"><input type="submit" value="Edit User"></td></tr>
</table>
</form>

</body>
</html>