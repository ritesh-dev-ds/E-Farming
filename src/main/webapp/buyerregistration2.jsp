<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<span class="alert alert-success col-lg-8 col-md-8 col-sm-8 col-xs-12">Hey!  You Have SuccessFully Validated And Submitted</span>
<%@page import="java.sql.*" %>

<%!
 String un,up,uemail,umob,uadd,udob,fname;
%>
<%
 un=request.getParameter("bname");
 uemail=request.getParameter("bemail");
 up=request.getParameter("bpass");
 fname=request.getParameter("bfname");
 umob=request.getParameter("bmob");
 udob=request.getParameter("bdob");
 uadd=request.getParameter("badd");
 if (un.equals("") ||  uemail.equals("") || up.equals("") || fname.equals("") || umob.equals("") || udob.equals("") || uadd.equals(""))
 {
	 out.println("invalid entry");
	 response.sendRedirect("buyerregistration.jsp");
 }
 else
 {
 try
 {
 
 Class.forName("org.postgresql.Driver");
 Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
 PreparedStatement ps=con.prepareStatement("insert into buyerdetail values(?,?,?,?,?,?,?)");
 ps.setString(1,un);
 ps.setString(2,uemail);
 ps.setString(3,up);
 ps.setString(4,fname);
 ps.setString(5,umob);
 ps.setString(6,udob);
 ps.setString(7,uadd);
 
 int x=ps.executeUpdate();
 if(x>0){
  response.sendRedirect("buyerlogin.jsp");
  
 }
 else
 {
  out.println("Error in Execution");
 }
   
 
 
 }
 catch(Exception e)
 {
  out.println(e);
 }
 }
%>


</body>
</html>


