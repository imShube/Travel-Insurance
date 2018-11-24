<%@page import="com.cts.dao.UserDao"%>
<jsp:useBean id="u" class="com.cts.pojo.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>