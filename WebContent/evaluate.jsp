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
<body>
<%! String userdbName;
String userdbPsw;
int c=0;
int d;
%>

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
String ans;
String v;
String sql1;
String x;
int sc;

try
{
	   Class.forName(driverName);
	   con = DriverManager.getConnection(url, user, dbpsw);
	   st=con.createStatement();
	   st1=con.createStatement();
	   rs=st.executeQuery(sql);
	   sc=(int)session.getAttribute("score");
	   //out.println("Sc"+sc);
	   
	   while(rs.next())
	   {
		   c++;
		   ans=rs.getString("ans");
		   //x=Integer.toString(c);
		   //out.println("X"+x);
		  d =rs.getInt("id");
		  v=request.getParameter(Integer.toString(d));
		  
		  // ${param.favoriteLanguage }
		   //qid=rs.getInt("id");
		  // out.println("In : "+c);
		 // out.println("Ans"+ans+"v"+v);
		  if(v.equalsIgnoreCase(ans))
		  {
			  sc=sc+10;
		  }
			if(c==10)
				{
					break;
				}
				
				%>
   	
 <%
	   }
	   //out.println("Max "+sc);
	   String sq2="update userdetail set score = '"+sc+"' where id= '"+d+"'";
	   int j=st.executeUpdate(sq2);
	   
	 %>
	 <a style="font-size:40px;margin-left:600px" href="user.jsp">Well Done!!! </a>
	 <%  
}
catch(Exception e)
{
	   out.println("Exception in Evaluate");
}
%>

	

</body>
</html>