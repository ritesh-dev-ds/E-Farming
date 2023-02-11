<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect1.jsp" %>
<%! String prid; 
      %>  
<%
prid=request.getParameter("txtID");
try
{
PreparedStatement ps=con.prepareStatement("DELETE FROM farmerdetail WHERE uname=?");
ps.setString(1,prid);
int x=ps.executeUpdate();
if(x>0){
%>
<script>
	if(confirm("Deleted Successfully"))
		{
			location="admin.jsp";
		}
	else
		{
			location="admin.jsp";
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