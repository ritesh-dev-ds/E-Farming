<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.jumbotron{
text-align:center;
background-color:#afedd2;

} 
body
   {
     margin:0px; font-family:Arial, Helvetica, sans-serif;
   }
   #main
   {
     width:600px; height:260px; margin-left:auto; margin-right:auto; border-radius:5px; padding-left:10px; margin-top:100px;
     border-top:3px double #f1f1f1; border-bottom:3px double #f1f1f1; padding-top:20px;
   }
   #main table
   {
     font-family:"Comic Sans MS", cursive;
   } 
  /* css code for textbox */
  #main .tb
  {
    height:28px; width:230px; border:1px solid #27a465; color:#27a465; font-weight:bold; border-left:5px solid #f7f7f7; opacity:0.9;
  }

   /* css code for button*/
   #main .btn
   {
    width:80px; height:32px; outline:none;  font-weight:bold; border:0px solid #27a465; text-shadow: 0px 0.5px 0.5px #fff;	
    border-radius: 2px; font-weight: 600; color: #27a465; letter-spacing: 1px; font-size:14px; -webkit-transition: 1s; -moz-transition: 1s; transition: 1s;
   }
  
   #main .btn:hover
   {
    background-color:#27a465; outline:none;  border-radius: 2px; color:#f1f1f1; border:1px solid #f1f1f1;
   }
   
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <body>
	<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Admin Section</p>
  </div>
</div>
	<div id="main">
	<div class="h-tag">
	<h2>Welcome To Admin Login</h2>
	</div>
	<form action=adminlogin2.jsp method=post>
	<div class="login">
	<table cellspacing="2" align="center" cellpadding="8" border="0">
	<tr>
	<td>Enter User Name :</td>
	<td><input type="text" placeholder="Enter user name here" id="email" name="aname" class="tb" /></td>
	</tr>
	<tr>
	<td>Enter Password :</td>
	<td><input type="password" placeholder="Enter Password here" id="pwd1" name="apass" class="tb" /></td>
	</tr>
	<tr>
	<td></td>
	<td>
	<input type="submit" value="Login" class="btn" /></td>
	</tr>
	</table>
	</div>
  	 <!-- login box div ending here.. -->
	</div>
	</form>
    
</body>
</html>