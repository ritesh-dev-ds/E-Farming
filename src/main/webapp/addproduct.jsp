<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
   function validation()
   {
	   var cname= document.getElementById("txtPname").value;
	   var cprice= document.getElementById("txtMRP").value;
	   var cqty= document.getElementById("txtDisc").value;
	   var filter=/^([0-9]{0,4})$/;
	   var filter2=/^([a-zA-Z ]*)$/;
	   if(cname=='')
		{
			alert('Please enter Crop name');
			document.getElementById("txtPname").focus;
			return false;
		
		}
	   else if (!filter2.test(cname))
		{
			alert('Invalid Crop Name');
			document.getElementById("txtPname").focus;
			return false;
		
			
		}
		
		if(cprice=='')
		{
			alert('Please enter Price');
			document.getElementById("txtMRP").focus;
			return false;
		
			
		}
		else if (!filter.test(cprice))
		{
			alert('Invalid Crop Price');
			document.getElementById("txtMRP").focus;
			return false;
		
			
		}
		if(cqty=='')
		{
			alert('Please enter Quantity.');
			document.getElementById("txtDisc").focus;
			return false;
		
			
		}
		else if(!filter.test(cqty))
		{
			alert('Invalid Quantity');
			document.getElementById("txtDisc").focus;
			return false;
			
		}
		
   }
   
	</script>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<title>Crops Details</title>
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

</head>
<body>
<%
if(session.getAttribute("efuname")==null)
{
	response.sendRedirect("sellerlogin.jsp");
}
%>
	<div class="jumbotron">
		<h1>E-FARMING</h1>
		
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<form action=addproduct2.jsp method="post" >
					<div class="form-group">
						<label for="exampleInputName">CROPS NAME</label> <input type="text"
							class="form-control" id="txtPname" name="txtPname" required> 
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">PRICE(PER KG)</label> <input
							type="text" class="form-control" id="txtMRP" name=txtMRP
							aria-describedby="emailHelp" required> 
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">QUANTITY(IN KG)</label> <input type="text" name=txtDisc
							class="form-control" id="txtDisc" aria-describedby="emailHelp" required>
				
					</div>
								

					<button type="submit" class="btn btn-primary" onclick="return validation();">ADD PRODUCT</button>
				</form>


			</div>
			<div class="col-sm-7" id="regimg">
				
				<table class="table" id="output">
					
					
				</table>

			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<div class= "footer">
    <div class="owner">
                    This website belongs to Department of Agriculture &amp; Cooperation and Farmers Welfare,<br>
                    Ministry of Agriculture and Farmers Welfare, Government of India<br>
                    
                    Last Updated : 08 JANUARY, 2021
                </div>


</body>
</html>