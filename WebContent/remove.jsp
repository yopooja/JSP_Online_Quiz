<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove</title>
<style>
$blue: #23242a;

$grey: #f2f3f6;
$light-grey: lighten($grey, 2%);
$dark-grey: darken($grey, 10%);

@keyframes shake {
   0%, 100% {transform: translateX(0);} 
   10%, 30%, 50%, 70% {transform: translateX(-5px);} 
   20%, 40%, 60%, 80% {transform: translateX(5px);} 
}


@mixin center {
  position: absolute;
  top: 0; left: 0; right: 0; bottom: 0;
  margin: auto;
}

* {
  box-sizing: border-box;
}

body {
  background: $light-grey;
  font-family: sans-serif;
  color: #333;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.container {
  @include center;
  width: 300px;
  height: 300px;
  background: $grey;
  padding: 1em;
  border: 1px solid $dark-grey;
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), 0 5px 10px rgba(0,0,0,0.05);;
  border-radius: 3px;
  overflow: hidden;
}

.input-query {
  width: 100%;
  padding: 0.5em;
  border: 1px solid $dark-grey;
  border-radius: 3px;
  font-size: 1em;
  
  &:focus ~ .counter {
    opacity: 0.1;
    transition: opacity 1s ease-in;
  }
}

.list-wrap {
  margin-top: 0.4em;
  overflow-y: auto;
  overflow-x: hidden;
}

.list {
  max-height: 220px;
}

.list-item {
  font-size: 0.9em;
  padding: 0.5em 0.8em;
  border-bottom: 1px solid $dark-grey;
  border-top: 1px solid white;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  word-wrap: normal;
  max-width: 100%;
  
  &:first-child {
    border-top: none;
  }
  
  &:last-child {
    border-bottom: none;
  }
}

.list-item-link {
  color: #444;
  text-decoration: none;
}

.item-list-subtext {
  font-size: 85%;
  color: grey;
  &:before { content: ' ('}
  &:after { content: ')'}
}

.list-item--disable {
  text-align: center;
  border-bottom: none;
  animation: shake 0.6s;
  color: #9da1b1;
}

.counter {
  position: absolute;
  bottom: -15px;
  right: 10px;
  z-index: 0;
  font-size: 3.5em;
  color: black;
  transform: translateY(0);
  opacity: 0;
}



</style>
<link type="text/javascript" href="removeJs.js"/>
</head>
<body style="background-color:#E0F2F1">
<%! String userdbName;
String userdbPsw;
String dbUsertype;

%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
Statement st=null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String dbpsw = "";%>

<div style="margin-left:500px" class="container" data-behaviour="search-on-list">
 <h3>Choose the Question to delete</h3>
 
  <div class="list-wrap">
  <ul class="list" data-search-on-list="list">
   <%
   String sql="select * from questions";
   try
   {
	   Class.forName(driverName);
	   con = DriverManager.getConnection(url, user, dbpsw);
	   st=con.createStatement();
	   rs=st.executeQuery(sql);
	   while(rs.next())
	   {
		   %>
		   <li class="list-item" data-search-on-list="list-item "><% session.setAttribute("mykey",rs.getString("id")); %>
      		<a href="delete.jsp" class="list-item-link"><p>Id : <%=rs.getString("id") %> ---> </a>
   		 	<a href="delete.jsp" class="list-item-link"><%=rs.getString("quest") %></a>
   		 	
   		 	</li>
    <%
	   }
   }
   catch(Exception e)
   {
	   out.println("Exception in Remove");
   }
   %>
   
    <br>           
  </ul>
  </div>
</div>
</body>
</html>