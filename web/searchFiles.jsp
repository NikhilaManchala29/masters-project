<%@page import="PasswordCracking.Hashcat"%>
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
        <h2>Request for Secret Key</h2>
       
        <p>		
         <%@ include file = "connect.jsp" %>
        <%
		
		try 
				{
		String id=request.getParameter("id");
		String fname=request.getParameter("fname");
		
		%>
       <form id="form1" name="form1" method="post" action="searchFiles1.jsp">
        <table width="445" border="0" align="center">
          <tr>
             <td height="37"><div align="center" class="style11 style12"><font size="3" color="BLUE"><b>File Name </div></td>
            <th width="161" scope="col"><form id="form2" name="form2" method="post" action="">
              <label>
                <div align="center">
                  <input type="text" name="t1" value="<%=fname%>"/>
                </div>
              </label>
            </form>            </th>
          </tr>
          <tr>
            <td height="37"><div align="center" class="style13"><font size="3" color="BLUE"><b>Request Key Authentication </div></td>
            <td><div align="center">
              <input type="text" name="textfield2" />
            </div></td>
          </tr>
          <tr>
            <td>
              <label>
                <div align="right">
                  <input type="submit" name="Submit" value="Request" />
                </div>
              </label>
                </td>
            <td>&nbsp;</td>
          </tr>
        </table>
		 </form>       
      </p>
	  
	   <p>		
        
         <% }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		  
			    
       
        </p>
	  
        <p>
	    
</p>
        <p><a href="searchFile.jsp">Back</a></p>
      </div>
    </div>
    <div id="column2">
      <h2 align="center">User Menu</h2>
      <ul align="center">
    <li><a href="dataOwnerMain.jsp">HOME PAGE</a></li>
    <li><a href="dataOwnerLogin.jsp">LOGOUT</a></li>
   
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
