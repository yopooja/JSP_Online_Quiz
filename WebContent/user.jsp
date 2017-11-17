<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */ 
.button4 {background-color: #e7e7e7; color: black;} /* Gray */ 
.button5 {background-color: #555555;} /* Black */
</style>

</head>
<body style="background-color:#B2EBF2">
<h1 style="color:#1A237E;text-align:center">Welcome, <%=session.getAttribute("name")%></h1>
<a style="margin-left:600px" class="button button2" href="profile.jsp">Profile</a><br><br>
<a style="margin-left:600px"class="button button2" href="test.jsp">Start The Test</a>
<p><a style="margin-left:600px"class="button button2" href="logout.jsp">Logout</a><p>

</body>
</html>