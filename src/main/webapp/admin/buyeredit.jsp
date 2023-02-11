<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.jumbotron{
text-align:center;
background-color:#afedd2;
}
</style>
</head>
<body onload="checklogin()">
<%@page import="java.sql.*" %>
<%! String prid; %>  
<%
if(session.getAttribute("aname")==null)
{
	response.sendRedirect("adminlogin.jsp");
}
else
{
	prid=request.getParameter("buname");
try
{
PreparedStatement ps=con.prepareStatement("select * from buyerdetail where buname=?");
ps.setString(1,prid);
ResultSet rs=ps.executeQuery();
rs.next();

%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Admin Section</p>
  </div>
</div>
</div>
<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<form action=buyeredit2.jsp method ="post" >
				<div class="form-group">
						<label for="exampleInputName">Username</label> <input type="text"
							class="form-control" id="txtID" name="txtID" required value="<%= rs.getString(1) %>" > 
					</div>
					
					<div class="form-group">
						<label for="exampleInputName">Email</label> <input type="text"
							class="form-control" id="txtPname" name="txtPname" required value="<%= rs.getString(2) %>" > 
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Full name</label> <input
							type="text" class="form-control" id="txtMRP" name="txtMRP"
							aria-describedby="emailHelp" required value="<%= rs.getString(4)%>" > 
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Mobile</label> <input type="text" name=txtDisc
							class="form-control" id="txtDisc" aria-describedby="emailHelp" required value="<%= rs.getString(5) %>" >
				
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Date Of Birth</label> <input type="text" name=txtDisc
							class="form-control" id="txtDisc" aria-describedby="emailHelp" required value="<%= rs.getString(6) %>" >
				
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Address</label> <input type="text" name=txtDisc
							class="form-control" id="txtDisc" aria-describedby="emailHelp" required value="<%= rs.getString(7) %>" >
				
					</div>

					<button type="submit" class="btn btn-primary">Delete</button>
				</form>
				</div>
				</div>
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