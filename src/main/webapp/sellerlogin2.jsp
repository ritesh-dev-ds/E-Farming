<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

<%!
 String un,up;

%>
<%

 un=request.getParameter("uname");
 up=request.getParameter("upass");

try
{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
PreparedStatement st=con.prepareStatement("select count(*) from farmerdetail where uname=? and upass=?");
st.setString(2,up);
st.setString(1,un);


ResultSet rs=st.executeQuery();


if(rs.next())
{
 int x=rs.getInt(1);
 if(x==1)
 {
	 session.setAttribute("efuname",un); 	
  response.sendRedirect("sellerdashboard.jsp");
  
 }
 else
 {
	 
  //out.println("Invalid Username or Password");
  
%>
<script>
  if(confirm("Invalid Username or Password"))
   {
    location="sellerlogin.jsp";
   }
  else
   {
    location="sellerlogin.jsp";
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
