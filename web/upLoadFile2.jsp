
 <%@ include file="connect.jsp" %>
 <%@ page import ="java.util.Date,java.util.Random" %>
 <%@ page import ="java.text.SimpleDateFormat" %>
 <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>


<%

    try 
	{      
			long stime=System.currentTimeMillis();
	 
	        String file=request.getParameter("t1");
      		String cont=request.getParameter("t2");
			String mac=request.getParameter("t3");
                        String sk1=request.getParameter("t4");
			
			String owner=(String)application.getAttribute("owner");
			String DData=(String)session.getAttribute("MData");
                        String RSA=(String)session.getAttribute("RSA");
                        String eliptic=(String)session.getAttribute("eliptic");
                        String diffie=(String)session.getAttribute("diffie");
			
			String cname,strDate,strTime,dt,rank,task1,attack,str1,str2,str3;
			int task=0,task11=0;
	
	       
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			 strDate = sdfDate.format(now);
			 strTime = sdfTime.format(now);
			 dt = strDate;
			
      	    	
				 rank = "0";
				 task1 = "Upload";
				 attack = "0";
				
				
	String str11 = "insert into transaction(cloud,user,fname,task,dt) values('cloud','"+owner+"','"+file+"','"+task1+"','"+dt+"')";
	connection.createStatement().executeUpdate(str11);
				
    String str12 = "insert into  vmfiles(cloud,owner,fname,ct,mac,rank,dt,sk,encodes,RSA,Eliptic,DiffeHelman) values ('cloud','"+owner+"','"+file+"','"+cont+"','"+mac+"','"+rank+"','"+dt+"','"+sk1+"','"+DData+"','"+RSA+"','"+eliptic+"','"+diffie+"')"; 
	connection.createStatement().executeUpdate(str12);
 response.sendRedirect("upLoadFile.jsp?mess=success");

			
          }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
	%>
   </p>
        
      </div>
    </div>
    <div id="column2">
       <h2 align="center">Owner Menu</h2>
      <ul>
    <li><a href="upLoadFile.jsp">Upload File</a></li>
    <li><a href="viewFiles.jsp">View Files</a></li>
     <li><a href="viewRequests.jsp">User Requests</a></li>
      <li><a href="roleBasedAccess.jsp">Role Based Access Control</a></li>
    <li><a href="dataOwnerLogin.jsp">Log Out</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
