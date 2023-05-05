
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home Page</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<link href="layout.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<style type="text/css">
<!--
.style4 {color: #FFFFFF; }
.style5 {
	color: #FF0000;
	font-weight: bold;
	
}
-->
</style>
</head>
<body>
<div style="margin-left: 225px;" class="slider">
     
        <div id="coin-slider"><img src="images/slide2.jpg" width="900" height="160" alt="" />        </div>
        
      
</div>
<div id="navigation" >
    <h2 align="center" ><font color="yellow" ><br>Enhanced Security Across Distributed and Pervasive Computing Environment</font></h3>
</div>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
          <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View All Attackers </h2>
      
        <p>
	
            
            
             <table bgcolor="#FFFFFF" cellpadding="5" cellspacing="5" width="825" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>Transaction ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>UserName</strong></font></td>
              <td align="center"><font color="#110022"><strong>FileName</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Task Type</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Attacked Date</strong></font></td>
            
            </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{    String cloud = (String)application.getAttribute("cloud");
						   	String query="select * from transaction where task='Attacker'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
						
					   		while (rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								
								
					
								
						
					%>
                     <tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#6300C6"> <%=i%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=s1%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=s2%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=s3%> </font></strong> 
              </td>
             
              <td align="center"><strong><font color="#6300C6"> <%=s4%> </font></strong> 
               </td>
            </tr>
                      <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                   
        </table>
        </p>
        
        
        <p><a href="cloudServerMain.jsp">Back</a></p>
      </div>
    </div>
    
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
