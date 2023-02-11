<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

<%!
 String an,ap;

%>
<%

 an=request.getParameter("aname");
 ap=request.getParameter("apass");

try
{

Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/efarming","postgres","1234");
PreparedStatement st=con.prepareStatement("select count(*) from admindetail where aname=? and apass=?");
st.setString(1,an);
st.setString(2,ap);


ResultSet rs=st.executeQuery();


if(rs.next())
{
 int x=rs.getInt(1);
 if(x==1)
 {
	 session.setAttribute("aname",an); 
  response.sendRedirect("admin.jsp");
 }
 else
 {
  //out.println("Invalid Username or Password");
%>
	 <script>
	  if(confirm("Invalid Username or Password"))
	   {
	    location="adminlogin.jsp";
	   }
	  else
	   {
	    location="adminlogin.jsp";
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
