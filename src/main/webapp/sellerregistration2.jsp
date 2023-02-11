<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%!
 String un,up,uemail,umob,uadd,ucomp,fname,udob;
%>
<%
 un=request.getParameter("uname");
 uemail=request.getParameter("uemail");
 up=request.getParameter("upass");
 fname=request.getParameter("fname");
 umob=request.getParameter("umob");
 udob=request.getParameter("udob");
 uadd=request.getParameter("uadd");
 ucomp=request.getParameter("ucomp");
 if (un.equals("") ||  uemail.equals("") || up.equals("") || fname.equals("") || umob.equals("") || udob.equals("") || uadd.equals("") || ucomp.equals(""))
 {
	 out.println("invalid entry");
	 response.sendRedirect("sellerregistration.jsp");
 }
 else
 {
 
 try
 {
 
 Class.forName("org.postgresql.Driver");
 Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
 PreparedStatement ps=con.prepareStatement("insert into farmerdetail values(?,?,?,?,?,?,?,?)");
 ps.setString(1,un);
 ps.setString(2,uemail);
 ps.setString(3,up);
 ps.setString(4,fname);
 ps.setString(5,umob);
 ps.setString(6,udob);
 ps.setString(7,uadd);
 ps.setString(8,ucomp);
 
 
 int x=ps.executeUpdate();
 if(x>0){
  response.sendRedirect("sellerlogin.jsp");
  
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