<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
	
  	try
	{  
	  		String user=request.getParameter("username");
			String usite=request.getParameter("usersite");
		        String pass=request.getParameter("pass");
				
								
						Statement st=connection.createStatement();
						String strQuery = "select * from dataowner where username='"+user+"' and patternpassword='"+usite+"'";// and site='"+site1+"'" ;
						ResultSet rs = st.executeQuery(strQuery);
						if(rs.next()==true)
						{
							String q1="update dataowner set status='Waiting',patternpassword='"+pass+"' where username='"+user+"' and patternpassword='"+usite+"'";
							Statement st1=connection.createStatement();
							int k=st1.executeUpdate(q1);
							if(k>0)
							{
                                                            
							      response.sendRedirect("dataOwnerMain.jsp?mese='success'");
								
							}
							else
							{response.sendRedirect("dataOwnerMain.jsp?message='success'");
								
							}
						
				}
			
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>