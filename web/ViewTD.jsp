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
<div id="content">
  <div id="page">
    <div id="column1">
      <div class="box1">
        <h2>View Performance Comparison Results</h2>
        
        <p>
            <h2 align="center"><b><font color="brown">Run the "Comparison.java" file To view The Results</font></b></h2> 
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
