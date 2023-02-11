<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

<%!
 String un,up;

%>
<%

 un=request.getParameter("bname");
 up=request.getParameter("bpass");

try
{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
PreparedStatement st=con.prepareStatement("select count(*) from buyerdetail where buname=? and bpass=?");
st.setString(1,un);
st.setString(2,up);


ResultSet rs=st.executeQuery();


if(rs.next())
{
 int x=rs.getInt(1);
 if(x==1)
 {
	 session.setAttribute("bfuname",un); 
  response.sendRedirect("buyerdashboard.jsp");
 }
 else
 {
  //out.println("Invalid Username or Password");
%>
	 <script>
	  if(confirm("Invalid Username or Password"))
	   {
	    location="buyerlogin.jsp";
	   }
	  else
	   {
	    location="buyerlogin.jsp";
	   }
	  
	 </script> 
<%	 
}
 
}

}
catch(Exception e)
{
 out.println(e);
}
%>
