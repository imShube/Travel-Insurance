<%@page import="com.cts.dao.ContactImpt"%>
<jsp:useBean id="cl" class="com.cts.pojo.Contact"></jsp:useBean>
<jsp:setProperty property="*" name="cl"/>

<%
ContactImpt.delete(cl);
response.sendRedirect("viewusers.jsp");
%>