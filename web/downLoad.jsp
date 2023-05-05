<%@page import="java.security.KeyPairGenerator"%>
<%@page import="java.security.spec.PKCS8EncodedKeySpec"%>
<%@page import="java.security.PrivateKey"%>
<%@page import="java.security.KeyFactory"%>
<%@page import="RSAAlgorithm.RSA"%>

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
            if(request.getParameter("mess")!=null)
            {%>
            <script>alert('Secrete Key is MisMatched.!!Your an Attacker.!');</script>  
            <%} if(request.getParameter("messx")!=null)
            {%>
            <script>alert('You dont have Role based Access Permissions to Download the file.!');</script>  
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
        <h2>Download Files</h2>
       
        <p>
		<form id="form1" name="form1" method="post" action="downLoad.jsp">
	  <p align="center"><span class="style5 style3 style22"> Enter Your Keyword </span>
      <input required="required" name="keyword" type="text" value="" size="40" /></p>
	   <p align="center"><input type="submit" name="Submit2" value="Search" />
	   </p>
	  </form>
        </p>
        
        <% String name=(String)application.getAttribute("owner");%>
       
        <p>
	    <table width="542" border="1" cellpadding="0" cellspacing="0">
			      <tr>
                                  <td width="79" height="35" bgcolor="purple"><div align="center" class="style5 style6 style20 style23"><font color="white"><b>File ID </div></td>
					<td width="212" bgcolor="purple"><div align="center" class="style7 style20 style23"><font color="white"><b>Owner Name </div></td>
                                                  <td width="212" bgcolor="purple"><div align="center" class="style7 style20 style23"><font color="white"><b>File Name </div></td>
					<td width="212" bgcolor="purple"><div align="center" class="style7 style20 style23"><font color="white"><b>Cloud Name </div></td>
					<td width="99" bgcolor="purple"><div align="center" class="style7 style20 style23"><font color="white"><b>Rank </div></td>
					<td width="99" bgcolor="purple"><div align="center" class="style7 style20 style23"><font color="white"><b>Download</div></td>
					 </tr>
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	  
	  <%	  
			  
			  
	
      	try 
	{
        String s1="",s2="",s3="",s4="",s5="",s11="",s12="",s13="",s14="",s15="",s21="",s22="",s23="",s24="",s25="";
	int i=0,j=0,k=0;
	String per ="",yes="";	
        
		  String keyword = request.getParameter("keyword");
	
		  application.setAttribute("a","a");
    
			String query3="select * from vmfiles"; 
            Statement st3=connection.createStatement();
            ResultSet rs3=st3.executeQuery(query3);
	   while ( rs3.next() )
	      {
		   i=rs3.getInt(1);
		   s1=rs3.getString(4);
		   s2=rs3.getString(2);
		   s3=rs3.getString(7);
		   s4=rs3.getString(5);
                StringBuilder sb=new StringBuilder(rs3.getString("encodes"));
                sb.reverse(); 
                String decryptedValue =sb.toString();
			
      	
	  
		if(decryptedValue.indexOf(keyword)>0)
		{
			
					
		%>
		<tr>
                    <td height="33"><div align="center" class="style24"><b> <%=i%> </div></td>
                        <td><div align="center" class="style24"><b>  <%=rs3.getString("owner")%> </div></td>
			<td><div align="center" class="style24"><b>  <%=s1%> </div></td>
			<td><div align="center" class="style24"><b>  <%=s2%> </div></td>
			<td><div align="center" class="style24"><b>  <%=s3%> </div></td>
			<td><div align="center" class="style24"><a href="downLoadd.jsp?id=<%=i%>">View File</a></div></td>
		</tr>

		<%
			}
	}
	   %>
			
			<%
	
			 
           connection.close();
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
	   %>
	</table>
</p>
        <p><a href="dataOwnerMain.jsp">Back</a></p>
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
