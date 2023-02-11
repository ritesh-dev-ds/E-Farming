<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

 <%!
 	String pn,ef;
    int pprice,pqty;
 	
 %>
  
 <%
    pn=request.getParameter("txtPname");
    pprice=Integer.parseInt(request.getParameter("txtMRP"));
    pqty=Integer.parseInt(request.getParameter("txtDisc"));
	ef=String.valueOf(session.getAttribute("efuname"));
	 if (pn.equals(" "))
	    {
	   	 out.println("invalid entry");
	   	 response.sendRedirect("addproduct.jsp");
	    }
	    else
	    {
		try
		{
	
	Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
	PreparedStatement ps=con.prepareStatement("insert into crops(pname,pprice,pqty,uname) values(?,?,?,?)");
	ps.setString(1,pn);
	ps.setInt(2,pprice);
	ps.setInt(3,pqty);
	ps.setString(4,ef);
	
	int x=ps.executeUpdate();
	if(x>0){
	%>
	
	<script>
		if(confirm("Product Added Successfully"))
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
	}
 %>