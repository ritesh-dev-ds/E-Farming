<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
 function validation()
 {
	 
	 var qty= document.getElementById("txtDisc").value;
	 var filter=/^([0-9]{0,4})$/;
	 
	if(qty=='')
	{
		alert('Please enter quantity');
		document.getElementById("txtDisc").focus;
		return false;
		 
	}
	if (!filter.test(qty))
	{
		alert('Invalid Quantity');
		document.getElementById("txtDisc").focus;
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
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<title>Edit Product</title>
</head>
<body onload="checklogin()">
<%@page import="java.sql.*" %>
<%! int prid1; %>
<%
if(session.getAttribute("bfuname")==null)
{
	response.sendRedirect("buyerlogin.jsp");
}
else
{
	prid1=Integer.parseInt(request.getParameter("pid"));
try
{
PreparedStatement ps1=con.prepareStatement("select * from crops where pid=?");
ps1.setInt(1,prid1);
ResultSet rs1=ps1.executeQuery();
rs1.next();

%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Buyer Section</p>
	</div>	
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<form action=buyproduct2.jsp method="post">
				<div class="form-group">
						<label for="exampleInputName">CROPS ID</label> <input type="text"
							class="form-control" id="txtID" name="txtID" required  value="<%= rs1.getInt(1) %>" > 
					</div>
					
					<div class="form-group">
						<label for="exampleInputName">CROPS NAME</label> <input type="text"
							class="form-control" id="txtPname" name="txtPname" required  value="<%= rs1.getString(2) %>" > 
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">PRICE(PER KG)</label> <input
							type="text" class="form-control" id="txtMRP" name="txtMRP"
							aria-describedby="emailHelp" required  value="<%= rs1.getString(3)%>" > 
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">QUANTITY(IN KG)</label> <input type="text" name=txtDisc
							class="form-control" id="txtDisc" placeholder="Quantity less than <%= rs1.getDouble(4) %>Kg" aria-describedby="emailHelp" >
				
					</div>

					<button type="submit" class="btn btn-primary" onclick="return validation();">Buy</button>
				</form>
				</div>
				</div>
				</div>
				<div class= "footer">
    <div class="owner">
                    This website belongs to Department of Agriculture &amp; Cooperation and Farmers Welfare,<br>
                    Ministry of Agriculture and Farmers Welfare, Government of India<br>
                    
                    Last Updated : 08 JANUARY, 2021
                </div>

<%
}
catch(Exception e)
{
	out.println(e);
}
}
%>
</body>
</html>