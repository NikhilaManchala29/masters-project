<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
            <script>alert('Permissions Added Successfully...!');</script>  
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
        <h3><span class="style19"> Add Permissions on Role Based Access Control Policies </span></h3>
        <p align="center"></p>
        <p align="justify">&nbsp;</p>
         <p>  <%@ include file = "connect.jsp" %>
		<form id="form1" name="form1" method="post" action="setPermissions.jsp">
	  <p align="center"><span class="style5 style3 style22"> &nbsp; File Name </span>
              &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   <SELECT name="t1" style="width:240px;" class="text">
                  <option>***Choose File Name***</option>
              <%String str = "select * from vmfiles ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str);
                        
			while(rs.next())
			{ %> <option value="<%=rs.getString("fname")%>"><%=rs.getString("fname")%></option><%}%>
              </select></p>
                      <p align="center"><span class="style5 style3 style22"> File Access Given to </span>
                     <SELECT name="t2" style="width:240px;" class="text">
                  <option>***Choose File Name***</option>
              <%String str1 = "select * from dataowner where username!='"+name+"'";
			Statement st1 = connection.createStatement();
			ResultSet rs1 = st1.executeQuery(str1);
                        
			while(rs1.next())
			{ %> <option value="<%=rs1.getString("username")%>"><%=rs1.getString("username")%></option><%}%>
              </select></p>
                      <p align="center"><span class="style5 style3 style22">Permissions </span>
                     &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   <input readonly name="t3" type="text" value="Download" size="30" /></p>
	   <p align="center"><input type="submit" name="Submit2" value="SET PERMISSIONS" />
	   </p>
	  </form>
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
