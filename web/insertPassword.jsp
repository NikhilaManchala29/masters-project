<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>

            <%
	  String uname=(String)session.getAttribute("uname");	       
			 String pwd=request.getParameter("userid");
PreparedStatement ps=connection.prepareStatement("update dataowner set patternpassword='"+pwd.replace(" ","") +"' where username='"+uname+"'");
						
						int x=ps.executeUpdate();
						if(x>0)
						{
							response.sendRedirect("dataOwnerLogin.jsp?message='exists'");
                                                }
					
			%>
