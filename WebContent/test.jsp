<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
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
<body style="background-color:#E3F2FD">
<%! String userdbName;
String userdbPsw;
int c=0;
%>
<h1 style="text-align:center;color:#1A237E">Welcome to Test</h1>
<form action="evaluate.jsp" method="get">
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;
ResultSet rs1=null;
Statement st=null;
Statement st1=null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String dbpsw = "";

String sql = "select * from questions";
int qid;
String sql1;
try
{
	   Class.forName(driverName);
	   con = DriverManager.getConnection(url, user, dbpsw);
	   st=con.createStatement();
	   st1=con.createStatement();
	   rs=st.executeQuery(sql);
	   while(rs.next())
	   {
		   c++;
		   qid=rs.getInt("id");
		  // out.println("In : "+c);
		   %>
		   <div style="background-color:#90CAF9;font-family:sans-serif">
		  <div style="background-color:#B2EBF2;font-size:22px"><%=rs.getString("quest") %>
		  <br></div><br>
		  <% sql1="select * from options where qid = '"+qid+"'";
				rs1=st1.executeQuery(sql1);
				while(rs1.next())
				{
					//out.println
					%>
						<input style="font-size:16px;font-family:sans-serif"type="radio" name="<%=rs.getInt("id") %>" value="<%=rs1.getString("type")%>"><%=rs1.getString("type") %>
					<br>
					<br>
				<%
				}
				%>
				</div> <br><%
				if(c==10)
				{
					break;
				}
				
				%>
   	
 <%
	   }
}
catch(Exception e)
{
	   out.println("Exception in Remove");
}
%>

	
	

<input type="submit" style="margin-left:600px" class="button button2" value="submit"/>
</form>
</body>
</html>