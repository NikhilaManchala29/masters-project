<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%
   	String fName=request.getParameter("t1");      
   	String oName=request.getParameter("t2");
        String unamez=(String)application.getAttribute("owner");  
	try
	{
		                                
			
			 
			String sql="SELECT * FROM filerequests where requestedby='"+unamez+"' and filename='"+fName+"' and status='Authorized' and owner='"+oName+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
                           String sql1="SELECT * FROM vmfiles where owner='"+rs.getString("owner")+"' and fname='"+fName+"'";
			   Statement stmt1 = connection.createStatement();
			   ResultSet rs1 =stmt1.executeQuery(sql1);
			   if(rs1.next())
			   {  
                           
                                %><script>window.alert('Secrete Key is: <%=rs1.getString("sk")%>')</script>
                                <%@ include file="requestFile.jsp" %>  
                                <%}
                        
			   
			}else{System.out.println("sssssssss");
				
                                SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			        Date now1 =new Date();
                                String strDate = sdfDate.format(now1);
			
		                 String	 dt = strDate;
                                 PreparedStatement ps=connection.prepareStatement("insert into filerequests(requestedby,dates,filename,status,owner) values(?,?,?,?,?)");
		ps.setString(1, unamez);
                ps.setString(2, dt);
                ps.setString(3, request.getParameter("t1"));
                ps.setString(4, "Waiting");
                ps.setString(5, request.getParameter("t2"));
						int x=ps.executeUpdate();
                                                if(x>0)
						{
                                                    response.sendRedirect("requestFile.jsp?mess=success");
                                                }}
             
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
           