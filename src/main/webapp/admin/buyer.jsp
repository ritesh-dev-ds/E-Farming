
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
text-align:center;
background-color:#afedd2;
}
</style>

<script>
function DisplayProducts()
{
	ob=new XMLHttpRequest();
	
	ob.open("GET","buyer2.jsp");
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
if(session.getAttribute("aname")==null)
{
	response.sendRedirect("adminlogin.jsp");
}
%>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">E-FARMING</h1>
    <p class="lead">Admin Section</p>
  </div>
</div>
</div>
			<div class="col-sm-12" id="regimg">
				
				<table class="table" id="output">
					
					
				</table>

			</div>

		</div>
	</div>

</body>
</html>