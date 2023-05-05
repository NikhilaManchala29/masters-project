
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>

            <%

PreparedStatement ps=connection.prepareStatement("delete from vmfiles where id='"+request.getParameter("id") +"'");
						
						int x=ps.executeUpdate();
                                                if(x>0)
						{
                                                    response.sendRedirect("viewFiles.jsp?message=success");
                                                }
					
			%>
