
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
        <h2>View All User File Requests </h2>
      
        <p>
	<table width="850" border="3" align="center"  cellpadding="0" cellspacing="0"  style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr STYLE="background-color: orchid">
					  <td  width="88"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>ID</div></td>
                        <td  width="132"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>User Name</div></td>
						
                                                                <td  width="212"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Owner Name</div></td>
                        <td  width="87"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>File Name</div></td>
                        <td  width="87"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Date</div></td>
                       
                                     
                       <td  width="146"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Action</div></td>
              
                                                        </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					String unamez=(String)application.getAttribute("owner");  
						String s1,s2,s3,s4,s33,s5;
						
						int i=0;
						try 
						{
						   	String query="select * from filerequests where owner='"+unamez+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
							        s33=rs.getString(5);
								s4=rs.getString(6);   
								
								
					
								
						
					%>
                      <tr>
					<td   >
					  <div align="center" class="style22 style23"><%=i%></div></td>
					  
                        <td   >
                        <div align="center" class="style24"><%=s1%></div></td>
                    
						<td   >
                        <div align="center" class="style24"><%=s4%></div></td>
                        <td   >
                        <div align="center" class="style24"><%=s3%></div></td>
                        
                        <td   >
                        <div align="center" class="style24"><%=s2%></div></td>
                         <%if(rs.getString("status").equalsIgnoreCase("Waiting"))
                          {%>  <td   >
                        <div align="center" class="style24"><a href="ActivateReq_1.jsp?id=<%=i%>" ><img src="images/a.JPG" height="30" width="70"></a></div></td>
                          <%}else{%>     <td  valign="baseline" height="0">
                          <div align="center" class="style24"><a href="ActivateReq_2.jsp?id=<%=i%>"><img src="images/d.JPG" height="30" width="70"></a></div></td>
                       
                      <%}%> </tr>
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
        
        
        <p><a href="dataOwnerMain.jsp">Back</a></p>
      </div>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
