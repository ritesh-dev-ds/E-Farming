<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function registration()
{

	var name= document.getElementById("fname").value;
	var email= document.getElementById("uemail").value;
	var uname= document.getElementById("uname").value;
	var pwd= document.getElementById("upass").value;			
	var cpwd= document.getElementById("ucpass").value;
	var mob= document.getElementById("umob").value;		
	var addr= document.getElementById("uadd").value;
	
    //email id expression code
	var pwd_expression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var mobf = /^[6-9]{1}[0-9]{9}$/;
    var letters = /^[A-Za-z ]+$/;
	if(name=='')
	{
		alert('Please enter your name');
		document.getElementById("fname").focus;
		return false;
	
	}
	else if(!letters.test(name)){
		alert('Please enter a valid name');
		document.getElementById("fname").focus;
		return false;
	}
	
	if(email=='')
	{
		alert('Please enter your user email id');
		document.getElementById("uemail").focus;
		return false;
	
	}
	else if (!filter.test(email))
	{
		alert('Invalid email');
		document.getElementById("uemail").focus;
		return false;
	}
	if(uname=='')
	{
		alert('Please enter the user name.');
		document.getElementById("uname").focus;
		return false;
	}
	
    if(pwd=='')
	{
		alert('Please enter Password');
		document.getElementById("upass").focus;
		return false;
	}
    else if(!pwd_expression.test(pwd))
	{
		alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
		document.getElementById("upass").focus;
		return false;
	}

    else if(pwd.length < 6 || pwd.length > 12)
	{
		alert ('Password length should be minimum 6 and maximum 12');
		document.getElementById("upass").focus;
		return false;
	}
	
	if(cpwd=='')
	{
		alert('Enter Confirm Password');
		document.getElementById("ucpass").focus;
		return false;
	}
	else if(pwd != cpwd)
	{
		alert ('Password not Matched');
		document.getElementById("ucpass").focus;
		return false;
	}
	if(addr=='')
	{
		alert('Enter Address');
		document.getElementById("uadd").focus;
		return false;
	}
    if(!mobf.test(mob))
	{
		alert('Enter Valid Mobile Number');
		document.getElementById("umob").focus;
		return false;
	}
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


    
    #main{width:600px; height:auto; overflow:hidden; padding-bottom:20px; margin-left:auto; margin-right:auto; 
    border-radius:5px; padding-left:10px; margin-top:100px; border-top:3px double #f1f1f1; 
    border-bottom:3px double #f1f1f1; padding-top:20px;
    }
    
    #main table{font-family:"Comic Sans MS", cursive;}
    /* css code for textbox */
    #main .tb{height:28px; width:230px; border:1px solid #f26724; color:#fd7838; font-weight:bold; border-left:5px solid #f7f7f7; opacity:0.9;}
    
    #main .tb:focus{height:28px; border:1px solid #f26724; outline:none; border-left:5px solid #f7f7f7;}

    /* css code for button*/
    #main .btn{width:150px; height:32px; outline:none;  color:#f7f7f7; font-weight:bold; border:0px solid #f26724; 
    text-shadow: 0px 0.5px 0.5px #fff; border-radius: 2px; font-weight: 600; color:#171715; letter-spacing: 1px; 
    font-size:14px; background-color:#f1f1f1; -webkit-transition: 1s; -moz-transition: 1s; transition: 1s;}
  
    #main .btn:hover{background-color:#f26724; outline:none;  border-radius: 2px; color:#f1f1f1; border:1px solid #f1f1f1;
    -webkit-transition: 1s; -moz-transition: 1s; transition: 1s; }
	
</style>
<meta charset="ISO-8859-1">
<title>Buyer Registration</title>
</head>
<body>
    
	<body>
	<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Buyer Section</p>
  </div>
</div>
	<div id="main">
	<div class="h-tag">
	<h1 align="center">Create Your Account</h1>
	</div>
	<form action ="buyerregistration2.jsp" id="formid" method="post" role="form"  autocomplete="off">
	<div class="login">
	<table cellspacing="2" align="center" cellpadding="8" border="0">
	<tr>
	<td align="right">Enter Full Name :</td>
	<td><input type="text" placeholder="Enter full name here" id="fname" name="bfname" class="tb" />
	</td>
	</tr>
	<tr>
	<td align="right">Enter Email ID :</td>
	<td><input type="text" placeholder="Enter Email ID here" id="uemail" name="bemail" class="tb" />
	</td>
	</tr>
	<tr>
	<td align="right">Enter Username :</td>
	<td><input type="text" placeholder="Enter Username here" id="uname" name="bname" class="tb" /></td>
	</tr>
	<tr>
	<td align="right">Enter Password :</td>
	<td><input type="password" placeholder="Enter Password here" id="upass" name="bpass" class="tb" /></td>
	</tr>
	<tr>
	<td align="right">Enter Confirm Password :</td>
	<td><input type="password" placeholder="Enter Password here" id="ucpass" name="bcpass" class="tb" />
	</td>
	</tr>
	<tr>
	<td align="right">Enter Moblie No. :</td>
	<td><input type="mobile" placeholder="Enter Mobilr No. here" id="umob" name="bmob" class="tb" /></td>
	</tr>
	<tr>
	<td align="right">Enter Date Of Birth :</td>
	<td><input type="date" placeholder="Enter Date Of Birth here" id="udob" name="bdob" class="tb" /></td>
	</tr>
	<tr>
	<td align="right">Address :</td>
	<td><input type="text" placeholder="Enter Address here" id="uadd" name="badd" class="tb" /></td>
	</tr>
	<tr>
	<td></td>
	<td>
	<input type="submit"  name="btn" class="btn btn-success" onclick="return registration();" value="Register"></td>
	</tr>
	</table>
	</div>
	<!-- create account box ending here.. -->
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