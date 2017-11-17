<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body style="background-color:#E0F2F1">
<%! String userdbName;
String userdbPsw;
//String dbUsertype;

%>
<%
Connection con= null;
PreparedStatement ps = null;
Statement st=null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String dbpsw = "";

String question= request.getParameter("question");
String o1 = request.getParameter("option1");
String o2 = request.getParameter("option2");
String o3 = request.getParameter("option3");
String o4 = request.getParameter("option4");
String ans = request.getParameter("ans");
String qid=request.getParameter("qid");
//String usertype = request.getParameter("usertype");

//String sql="insert into questions"
//out.println("Question:"+question);
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
//ps = con.prepareStatement(sql);
//ps.setString(1, name);
//ps.setString(2, password);
//ps.setString(3, usertype);
//rs = ps.executeQuery();
st=con.createStatement();
int i=st.executeUpdate("insert into questions(quest,ans) values('"+question+"','"+ans+"')");
//out.println("Succsess wwjfhuwr");


int  j=st.executeUpdate("insert into options(type,qid) values('"+o1+"','"+qid+"')");
int  k=st.executeUpdate("insert into options(type,qid) values('"+o2+"','"+qid+"')");
int  l=st.executeUpdate("insert into options(type,qid) values('"+o3+"','"+qid+"')");
int  m=st.executeUpdate("insert into options(type,qid) values('"+o4+"','"+qid+"')");
%>
<a style="text-align:center" href="admin.jsp">Successfully Added Question !!!!</a>


<%

/*if(rs.next()) 
{ 
userdbName = rs.getString("name");
userdbPsw = rs.getString("password");
userdbSt = rs.getInt("status");
//dbUsertype = rs.getString("usertype");
if(name.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("status",userdbSt);
//session.setAttribute("usertype", dbUsertype); 
response.sendRedirect("check.jsp"); 

} 
}**/
}
catch(Exception e)
{
	out.println("Exception Occured in addData Question");
}
%>
</body>
</html>