<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body onload="checklogin()">
<%
if(session.getAttribute("efuname")==null)
{
	response.sendRedirect("sellerlogin.jsp");
}
%>

<%@page import="java.sql.*" %>
<%! String un; %>
<%
un=String.valueOf(session.getAttribute("efuname"));
try
{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
Statement st=con.createStatement();

PreparedStatement ps=con.prepareStatement("select * from crops where uname=?");
ps.setString(1,un);
ResultSet rs=ps.executeQuery();
out.print("<tr><th>CROPS ID</th><th>CROPS NAME</th><th>MRP(PER KG)</th><th>Quantity(IN KG)</th><th>Edit</th></tr>");
while(rs.next())
{
	out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><a href=editproduct.jsp?pid="+rs.getInt(1)+">Edit</a></td></tr>");
}
}
catch(Exception e)
{
	out.println(e);
}



%>