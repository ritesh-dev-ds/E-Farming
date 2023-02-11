<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
function register2(){
	
	 window.location = "sellerregistration.jsp";
}
</script>
<style type="text/css">
.jumbotron{
    width: 1200px;
    margin: 0px auto;
    padding: 0px;
    height: 155px;
    background-image: url(headerbg.jpg);
    background-repeat: no-repeat;
}
body {
    margin: 0px auto;
    padding: 0px;
    background-image: url(containerbg.jpg);
    background-repeat: repeat;
    font: normal 100% Arial, Helvetica, sans-serif;
    overflow-x: hidden;
}
.owner {
    text-align: center;
    font: normal 0.8em Arial, Helvetica, sans-serif;
    color: #FFF;
    line-height: 17px;
    margin: 0px 0px 0px 0px;
    padding: 10px 0px 0px 0px;
    background-color: transparent;
}
.footer {
    margin: 20px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
    background-color: #577308;
    text-align: center;
}

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
<title>Seller Login</title>
</head>
<body>
	<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Seller Section</p>
  </div>
</div>
	<div id="main">
	<div class="h-tag">
	<h2 align="center">Welcome To Seller Login</h2>
	</div>
	<form action=sellerlogin2.jsp method=post>
	<div class="login">
	<table cellspacing="2" align="center" cellpadding="8" border="0">
	<tr>
	<td>Enter User Name :</td>
	<td><input type="text" placeholder="Enter user name here" id="email" name="uname" class="tb" /></td>
	</tr>
	<tr>
	<td>Enter Password :</td>
	<td><input type="password" placeholder="Enter Password here" id="pwd1" name="upass" class="tb" /></td>
	</tr>
	<tr>
	<td></td>
	<td>
	<input type="submit" value="Login" class="btn" onClick="login()" /></td>
	</tr>
	<tr>
	<td>New User Register here:</td><td><input type="button" value="Click here" onclick="register2()" class="btn" /></td>
	</tr>
	</table>
	</div>
  	 <!-- login box div ending here.. -->
	</div>
	<div class= "footer">
    <div class="owner">
                    This website belongs to Department of Agriculture &amp; Cooperation and Farmers Welfare,<br>
                    Ministry of Agriculture and Farmers Welfare, Government of India<br>
                    
                    Last Updated : 08 JANUARY, 2021
                </div>
	</form>
    
</body>
</html>