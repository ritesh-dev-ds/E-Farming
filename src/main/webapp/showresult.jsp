<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</style>
<script>
function DisplayProducts()
{
	ob=new XMLHttpRequest();
	
	ob.open("GET","showresult2.jsp");
	ob.send();
	ob.onreadystatechange=function(){
		
		if(ob.status==200 && ob.readyState==4){
			document.getElementById("output").innerHTML=ob.responseText;				
		}
	
	}
	
}
</script>
</head>
<body onload="DisplayProducts()">
<%
if(session.getAttribute("bfuname")==null)
{
	response.sendRedirect("buyerlogin.jsp");
}
%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Buyer Section</p>
  </div>
</div>

			<div class="col-sm-12" id="regimg">
				
				<table class="table" id="output">
					
					
				</table>

			</div>
			<div class= "footer">
    <div class="owner">
                    This website belongs to Department of Agriculture &amp; Cooperation and Farmers Welfare,<br>
                    Ministry of Agriculture and Farmers Welfare, Government of India<br>
                    
                    Last Updated : 08 JANUARY, 2021
                </div>
	

</body>
</html>