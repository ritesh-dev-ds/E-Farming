%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@ include file="connect.jsp" %>

  <%!
 	String pname;
    int pprice,pqty,prid;
 	
 %>
  
 <%
    prid=Integer.parseInt(request.getParameter("txtID"));
    pname=request.getParameter("txtPname");
    pprice=Integer.parseInt(request.getParameter("txtMRP"));
    pqty=Integer.parseInt(request.getParameter("txtDisc"));		
	try
	{
	
	PreparedStatement ps=con.prepareStatement("update crops set pname=?,pprice=?,pqty=? where pid=?");
	ps.setString(1,pname);
	ps.setInt(2,pprice);
	ps.setInt(3,pqty);
	ps.setInt(4,prid);
	
	
	int x=ps.executeUpdate();
	if(x>0){
	%>
	
	<script>
		if(confirm("Product Updated Successfully"))
			{
				location="sellerdashboard.jsp";
			}
		else
			{
				location="sellerdashboard.jsp";
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