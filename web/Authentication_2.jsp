
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>

            <%


String status="Waiting";

PreparedStatement ps=connection.prepareStatement("update dataowner set status='"+status+"' where id='"+request.getParameter("id") +"'");
						
						int x=ps.executeUpdate();
                                                if(x>0)
						{
                                                    response.sendRedirect("viewAllUser.jsp?message=success");
                                                }
					
			%>
