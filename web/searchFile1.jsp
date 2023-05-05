
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
<script type='text/javascript'>
        function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}
</script>
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
        <h2>File Decryption Process</h2>
       
   
        <p>
		
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	 
		 <%
		  
		    	try 
				{
			
				String id =(String)session.getAttribute("id");
				String a = (String)application.getAttribute("a");
				String t2 = request.getParameter("t2");
                               
                String file,ct,rank;
				int i=0,j=0;
			String str = "select * from vmfiles where id='"+id+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str);
                        
			if(rs.next())
			{ 
			file = rs.getString(4);
			ct = rs.getString(5);
				String sk = rs.getString(9);
			j = rs.getInt(7);
			
			i = j+1;
			System.out.println("hhhhhhhhhh");
			String namex=(String)application.getAttribute("owner");
		  
                    
			 java.util.Date now = new java.util.Date();
                        String DATE_FORMAT1 = "dd/MM/yyyy";
                        SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
                        String strDateNew1 = sdf1.format(now);
			String str1 = "update vmfiles set rank='"+i+"' where id='"+id+"'";
			connection.createStatement().executeUpdate(str1);
                        String str11 = "insert into transaction(cloud,user,fname,task,dt) values('cloud','"+namex+"','"+file+"','Download','"+strDateNew1+"')";
			connection.createStatement().executeUpdate(str11);
			System.out.println("sssssssss "+sk);	
		if(t2.equalsIgnoreCase(sk))
		{      String strx = "select * from permissions where filename='"+file+"' and username='"+namex+"'";
			Statement stx = connection.createStatement();
			ResultSet rsx = stx.executeQuery(strx);
                        
			if(rsx.next())
			{   StringBuilder sb=new StringBuilder(rs.getString("encodes"));
                sb.reverse(); 
                String decryptedValue =sb.toString();
			%>
			
		
        <table width="478" border="0" align="center">
              <tr >
                <td width="223" align="center" height="51" bgcolor="purple"><span class="style5 style22"><font size="3" color="white"><b>File Name </span></td>
                <td width="245"><label>
                  <input required name="t1" type="text" value="<%=file%>" size="40" />
                </label></td>
              </tr>
             
              <tr>
                <td height="35"  align="center" bgcolor="purple"><span class="style5 style22"><font size="3" color="white"><b>File Content</span></td>
                <td><textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right"></div></td>
                <td><label>
                  <button onClick="saveTextAsFile()">Download</button>
                </label></td>
              </tr>
        </table>
         
			
			    
	 
			        </p>
		<%
		}else{ response.sendRedirect("downLoad.jsp?messx=fail");}}
		else
		{      
		        String str111 = "insert into transaction(cloud,user,fname,task,dt) values('cloud','"+namex+"','"+file+"','Attacker','"+strDateNew1+"')";
			connection.createStatement().executeUpdate(str111);
                        response.sendRedirect("downLoad.jsp?mess=fail");
		}
		}
		if(a.equalsIgnoreCase("a"))	
		{	
		%>	
        <p><a href="searchFile.jsp">Back</a></p>
      <%
	  }
	  else
	  {
	  %>
	   <p><a href="viewOwnerFile.jsp">Back</a></p>
	  <%
	  }
	  	
			
	
					
		
					
	
	 
           connection.close();
          }
         
          catch(Exception e)
          {
            e.printStackTrace();
          }
%> 		  
			    
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
