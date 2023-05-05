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
     <%
            if(request.getParameter("mese")!=null)
            {%>
            <script>alert('Password Changed Successfully...!');</script>  
            <%}if(request.getParameter("message")!=null)
            {%>
            <script>alert('Password Change Unsuccessful,Please Try Again..!');</script>  
            <%}
        %>   
<div style="margin-left: 225px;" class="slider">
     
        <div id="coin-slider"><img src="images/slide2.jpg" width="900" height="160" alt="" />        </div>
        
      
</div>
<div id="navigation" >
    <h2 align="center" ><font color="yellow" ><br>Enhanced Security Across Distributed and Pervasive Computing Environment</font></h3>
</div>
<% String name=(String)application.getAttribute("owner");%>
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>WelCome to :<span class="style19"> <%=(String)application.getAttribute("owner")%></span></h2>
        <p align="center"><img src="images/user1.JPG" width="490" height="325" /></p>
        <p align="justify">&nbsp;</p>
        <p>
		
        </p>
        
        
       
      </div>
    </div>
    <div id="column2">
       <h2 align="center">User Menu</h2>
      <ul>
    <li><a href="viewUserFiles.jsp">View All Files</a></li>
    <li><a href="searchFile.jsp">Search File</a></li>
    <li><a href="requestFile.jsp">Request File</a></li>
    <li><a href="downLoad.jsp">Download File</a></li>
    <li><a href="dataUserLogin.jsp">Log Out</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
