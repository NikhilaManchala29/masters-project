<title>SAE : </title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	
	
    try
	{
		                                
			application.setAttribute("cloud",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				
				response.sendRedirect("cloudServerMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>