<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<%
int st=(int)session.getAttribute("status");
//out.println("st: "+st);
if(st==1)
	response.sendRedirect("admin.jsp"); 
else
	response.sendRedirect("user.jsp"); 
%>


</body>
</html>