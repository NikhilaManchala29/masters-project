<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>

            <%
	String uname=request.getParameter("userid");		       
				
String languages=request.getParameter("pass");
String utype=request.getParameter("utype");
String email=request.getParameter("email");	
String mno=request.getParameter("mobile");	
String addr=request.getParameter("address");	
String dob=request.getParameter("dob");	
String gender=request.getParameter("gender");	
String cloud=request.getParameter("cloud");	
String pincode=request.getParameter("pincode");	
PreparedStatement ps=connection.prepareStatement("insert into dataowner(username,password,email,mobile,address,dob,gender,pincode,cloud,status,utype) values(?,?,?,?,?,?,?,?,?,'Waiting','"+utype+"')");
						ps.setString(1,uname);
                                                session.setAttribute("uname",uname);
						ps.setString(2,languages);
						ps.setString(3,email);
                                                session.setAttribute("mobile",mno);
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
                                                session.setAttribute("dob",dob);
						ps.setString(7,gender);
						ps.setString(8,pincode);
				                ps.setString(9,cloud);
					        session.setAttribute("ptype",languages);
						int x=ps.executeUpdate();
						if(x>0)
						{
							response.sendRedirect("dataOwnerLogin.jsp?message=success");
                                                }
					
			%>
