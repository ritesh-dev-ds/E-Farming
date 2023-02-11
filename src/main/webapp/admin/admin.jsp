<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<style type="text/css">
.jumbotron{
text-align:center;
background-color:#afedd2;
background-image:url();
}

</style>
</head>
<body>
<%
if(session.getAttribute("aname")==null)
{
	response.sendRedirect("adminlogin.jsp");
}
%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">it makes farming easy.</p>
    <p class ="lead">Admin Section</p>
  </div>
</div>
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="buyer.jsp">Buyer Detail</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="seller.jsp">Seller Detail</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="crop.jsp">Crops Detail</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="order.jsp">Order Detail</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Logout1.jsp">Logout</a>
  </li>
</ul>
</body>
</html>