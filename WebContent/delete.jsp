<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
String dbUsertype;
int userdbSt=0;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String dbpsw = "";

String mykey=(String)session.getAttribute("mykey");
String sql = "delete from questions where id = "+mykey;

//out.println("My Key "+mykey);
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
//ps.setString(1, name);
//ps.setString(2, password);
//ps.setString(3, usertype);
int i=ps.executeUpdate();
if(i>0)
{
	// questions
}
else
{
	out.println("Problem in deleting");
//rs = ps.executeQuery();
}

sql="delete  from options where qid = "+mykey;
ps = con.prepareStatement(sql);
i=ps.executeUpdate();
if(i>0)
{
	%>
	<a href="admin.jsp">Deleted Successfully</a>
	<%
	}
else
{
	out.println("Problem in deleting");
} 


}

catch(SQLException sqe)
{
out.println(sqe);
} 


%>
</body>
</html>