
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
        <h2>View All Owners Files </h2>
      
        <p>
	<table width="781" border="3" align="center"  cellpadding="0" cellspacing="0"  font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
					  <td  width="88"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>File Id</div></td>
                        <td  width="132"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>File Name</div></td>
						<td  width="112"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Owner</div></td>
                                                                <td  width="212"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Public Key</div></td>
                        <td  width="87"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Rank</div></td>
                        <td  width="146"  valign="baseline" bgcolor="purple" style="color: #2c83b0;"><div align="center" class="style15 style21"><font size="3" color="white"><b>Date</div></td>
                      </tr>
					
<%@ include file="connect.jsp" %>

                      <%
					  
						String s1,s2,s3,s4,s33;
						String cloud=(String)application.getAttribute("cloud");
						int i=0;
						try 
						{
						   	String query="select * from vmfiles  "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(7);
							    s33=rs.getString(6).substring(10,30);
								s4=rs.getString(8);
								
								
					
								
						
					%>
                      <tr>
					<td  valign="baseline" >
					  <div align="center" class="style22 style23"><%=i%></div></td>
					  
                        <td  valign="baseline" >
                        <div align="center" class="style24"><%=s1%></div></td>
                        <td  valign="baseline" >
                        <div align="center" class="style24"><%=s2%></div></td>
						<td  valign="baseline" >
                        <div align="center" class="style24">******<%=s33%>******</div></td>
                        <td  valign="baseline" >
                        <div align="center" class="style24"><%=s3%></div></td>
                        <td  valign="baseline" >
                        <div align="center" class="style24"><%=s4%></div></td>
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
