<title>SAE : </title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String username=request.getParameter("userid");      
   	String Password=request.getParameter("pass");
	
	
    try
	{
		                                
			application.setAttribute("owner",username);
			 
			String sql="SELECT * FROM dataowner where username='"+username+"' and password='"+Password+"' and status='Authorized'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
                            
                                if(rs.getString("utype").equals("Owner"))
                                {
                                        response.sendRedirect("dataOwnerMain.jsp?mess='success'");
                                }
                                else
                                {
                                    if(rs.getString("utype").equals("User"))
                                    {
                                              response.sendRedirect("dataUserMain.jsp?mess='success'");
                                       
                                    }
                                    
                                 }
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