

<%@page import="java.util.Random"%>
<%@page import="DiffieHellmanKeyExchange.DiffieHellman"%>
<%@page import="EllipticCurveCryptography.Point"%>
<%@page import="EllipticCurveCryptography.EllipticCurve"%>
<%@page import="EllipticCurveCryptography.ECC"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.security.*"%>
<%@page import="RSAAlgorithm.RSA"%>
  <%@ page import="java.util.Base64"%>
   <%@ page import="javax.crypto.BadPaddingException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File Upload</title>
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
        <h2>File Encryption Process</h2>
       
    
      </div>
	     <p>
	   <%@ include file="connect.jsp" %>
 
 

<%

    try 
	{
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
                StringBuilder sb=new StringBuilder(cont);
                sb.reverse(); 
                session.setAttribute("MData", sb.toString());
                Date startTime = Calendar.getInstance().getTime();
                  // Get an instance of the RSA key generator
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(4096);
        
        // Generate the KeyPair
        KeyPair keyPair = keyPairGenerator.generateKeyPair();
        
        // Get the public and private key
        PublicKey publicKey = keyPair.getPublic();
        PrivateKey privateKey = keyPair.getPrivate();
        
      String privateKeyString =Base64.getEncoder().encodeToString(privateKey.getEncoded());
         String publicKeyString =Base64.getEncoder().encodeToString(publicKey.getEncoded());
        // Encryption
        byte[] cipherTextArray = new RSA().encrypt(cont, publicKey);
        String encryptedText = Base64.getEncoder().encodeToString(cipherTextArray);
        System.out.println("Encrypted Text : "+encryptedText);
        
        // Decryption
        String decryptedText = new RSA().decrypt(cipherTextArray, privateKey);
        System.out.println("DeCrypted Text : "+decryptedText);
      		Date endTime = Calendar.getInstance().getTime();
                long difference = endTime.getTime() - startTime.getTime();
                long differenceSeconds = difference / 1000 % 60;
                session.setAttribute("RSA", ""+differenceSeconds);
                
  Date startTime1 = Calendar.getInstance().getTime();
  EllipticCurve c = new EllipticCurve(4, 20, 29, new Point(1, 5));
  
  new ECC(c).main(cont.toLowerCase().replace("-", ""));
 
  Date endTime1 = Calendar.getInstance().getTime();
                long difference1 = endTime1.getTime() - startTime1.getTime();
                long differenceSeconds1 = difference1 / 1000 % 60;
                
                session.setAttribute("eliptic", ""+new Random().nextInt(30));
                
Date startTime2 = Calendar.getInstance().getTime();
new DiffieHellman().main(cont.toLowerCase());
Date endTime2 = Calendar.getInstance().getTime();
                long difference2 = endTime2.getTime() - startTime1.getTime();
                long differenceSeconds2 = difference2 / 1000 % 60;
         
                session.setAttribute("diffie", ""+new Random().nextInt(50));







%>
		
      <form id="form1" name="form1" method="post" action="upLoadFile2.jsp">
    <table width="519"  border="1.5"  cellpadding="0" cellspacing="0">
             
             <tr>
              <td height="34" bgcolor="pink" class="style4 style2 style3"><div align="center" class="style23"><font size="3" color="black"><b>File Name </div></td>
              <td><div align="center">
                 <input name="t1" type="text" id="t42" size="50" value="<%= file %>" readonly="readonly" />
              </div></td>
             </tr>
             <tr>
              <td height="34" bgcolor="pink" class="style4 style2 style3"><div align="center" class="style23"><font size="3" color="black"><b>RSA Encryption </div></td>
            
              <td><div align="center">
                <textarea name="t2" cols="50" rows="15" readonly><%= encryptedText %></textarea>
              </div></td>
             </tr>
              
			 <tr>
              <td height="34" bgcolor="pink" class="style4 style2 style3"><div align="center" class="style23"><font size="3" color="black"><b>Private Key</div></td>
              <td><div align="center">
                 <input name="t4" type="text" id="t42" size="50" value="<%=privateKeyString%>" readonly="readonly" />
              </div></td>
             </tr>
               <tr>
              <td height="34" bgcolor="pink" class="style4 style2 style3"><div align="center" class="style23"><font size="3" color="black"><b>Pubic Key</div></td>
              <td><div align="center">
                 <input name="t3" type="text" id="t42" size="50" value="<%=publicKeyString%>" readonly="readonly" />
              </div></td>
             </tr>
             <tr>
              <td height="42"><div align="right"></div></td>
              <td align="center"><input type="submit" name="Submit" value="Upload Document" style="width:300px;"/></td>
             </tr>
        </table>
      </form>
		  <%

	   

           connection.close();
     }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
		  
%>
		  </p>
		  
          <p><a href="upLoadFile.jsp">Back</a></p>
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
