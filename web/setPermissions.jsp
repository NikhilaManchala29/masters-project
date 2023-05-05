
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>

            <%


String status="Authorized";

PreparedStatement ps=connection.prepareStatement("insert into permissions(filename,username,status) values('"+request.getParameter("t1") +"','"+request.getParameter("t2") +"','"+request.getParameter("t3") +"')");
						
						int x=ps.executeUpdate();
                                                if(x>0)
						{
                                                    response.sendRedirect("roleBasedAccess.jsp?mese=success");
                                                }
					
			%>
