<%@page import="com.cts.dao.UserDao"%>
<jsp:useBean id="u" class="com.cts.pojo.User"></jsp:useBean>
<jsp:getProperty property="*" name="u"/>

<%
out.println(u.getUserid()+"hghujgvtgftkt");
System.out.println(u.getUserid()+" inside edituser.jsp");
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");
%>