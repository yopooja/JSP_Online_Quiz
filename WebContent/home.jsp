<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SVNIT Online Quiz System</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
</head>

<br>

<div class="col-lg-12 text-center ">
    <h1 style="font-family:Lucida Console">NIT SURAT </h1>
	  <h2 style="font-family:Lucida Console">Software Tools Quiz </h2>
</div>

<br>

<body class="login">


<div class="login_wrapper">

    <section class="login_content">
        <form name="form1" action="login.jsp" method="post">
            <h1 style="font-family:Lucida Console" >Login</h1>
			  <h2 style="font-family:Lucida Console">Use MIS Account Credentials</h2>
			  <br>
			  <br>

            <div>
                <input type="text" name="name" class="form-control" placeholder="Username" required=""/>
            </div>
            <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required=""/>
            </div>
            <div>

                <input class="btn btn-default submit" type="submit" name="submit1" value="Login">
               
            </div>

            <div class="clearfix"></div>

            <div class="separator">
               

                <div class="clearfix"></div>
                <br/>


            </div>
        </form>
    </section>


</div>


</body>
</html>
