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

ResultSet rs=st.executeQuery("select * from buyerdetail");
out.print("<tr><th>Username</th><th>Email</th><th>Full Name</th><th>Mobile No.</th><th>Date Of Birth</th><th>Address</th><th>Edit</th></tr>");
while(rs.next())
{
	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href=buyeredit.jsp?buname="+rs.getString(1)+">Edit</a></td></tr>");
}
}
catch(Exception e)
{
	out.println(e);
}



%>