<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body style="background-color:#E0F2F1">
<h1 style="text-align:center" >Welcome, <%=session.getAttribute("name")%></h1>


<h3 style="text-align:center">Your Gained Points are <%=session.getAttribute("score")%></h3>
<h4><a style="margin-left:600px;font-size:35px" href="logout.jsp">Logout</a><h4>

</body>
</html>