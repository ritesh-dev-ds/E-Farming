%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@ include file="connect.jsp" %>

  <%!
 	String pname,ef,pprice,pkqty;
    int prid,pqty;
 	
 %>
  
 <%
    pname=request.getParameter("txtPname");
    pprice=request.getParameter("txtMRP");
    pkqty=request.getParameter("txtDisc");	
    ef=String.valueOf(session.getAttribute("bfuname"));
    
	try
	{
	
	PreparedStatement ps=con.prepareStatement("insert into croporder(oname,oprice,oqty,buname) values(?,?,?,?)");
	ps.setString(1,pname);
	ps.setString(2,pprice);
	ps.setString(3,pkqty);
	ps.setString(4,ef);
	prid=Integer.parseInt(request.getParameter("txtID"));
    pqty=Integer.parseInt(request.getParameter("txtDisc"));		
	PreparedStatement ps1=con.prepareStatement("update crops set pqty=pqty-? where pid=?");
	ps1.setInt(1,pqty);
	ps1.setInt(2,prid);
	
	
	int y=ps1.executeUpdate();
	
	
	int x=ps.executeUpdate();
	if(x>0){
	%>
	
	<script>
		if(confirm("Successful"))
			{
				location="buyerdashboard.jsp";
			}
		else
			{
				location="buyerdashboard.jsp";
			}
		
	</script>
	<%
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
	
	%>
	