<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body onload="checklogin()">
<%
if(session.getAttribute("aname")==null)
{
	response.sendRedirect("adminlogin.jsp");
}
%>

<%@page import="java.sql.*" %>
<%
try
{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
Statement st=con.createStatement();

PreparedStatement ps=con.prepareStatement("select * from croporder");
ResultSet rs=ps.executeQuery();
out.print("<tr><th>CROPS NAME</th><th>MRP(PER KG)</th><th>Quantity(IN KG)</th></tr>");
while(rs.next())
{
	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
}
}
catch(Exception e)
{
	out.println(e);
}



%>