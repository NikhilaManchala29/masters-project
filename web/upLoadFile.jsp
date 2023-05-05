
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
<script language="javascript" type='text/javascript'>
        function loadFileAsText()
    {
	    var fileToLoad = document.getElementById("file").files[0];
	    var fileReader = new FileReader();
	    fileReader.onload = function(fileLoadedEvent) 
    {
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	    fileReader.readAsText(fileToLoad, "UTF-8");
    }
</script>
</head>
<body>
     <%
            if(request.getParameter("mess")!=null)
            {%>
            <script>alert('Data Uploaded Successfully!');</script>  
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
          <h2 class="style22"><font color="brown">Upload New Document</font></h2>
      
      </div>
	     <p>
	  <form id="form1" name="form1" method="post" action="upLoadFile1.jsp">
    <table width="519"  border="1.5"  cellpadding="0" cellspacing="0">
             <tr>
                 <td width="152" height="37" bgcolor="pink"><div align="center" class="style22"><span class="style2 style3"><font size="4" color="black"><b>Select File </span></div></td>
              <td width="361"><div align="center">
                <input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" />
              </div></td>
             </tr>
             <tr>
              <td height="34" bgcolor="pink" class="style4 style2 style3"><div align="center" class="style22"><font size="4" color="black"><b>File Name </div></td>
              <td><div align="center">
                <input required="required" name="tt" type="text" id="t42" size="40"/>
              </div></td>
             </tr>
             <tr>
              <td height="258" bgcolor="pink">&nbsp;</td>
              <td><div align="center">
                <textarea name="text" id="textarea" cols="40" rows="15"></textarea>
              </div></td>
             </tr>
             
             <tr>
              <td height="42" bgcolor="pink"><div align="right"></div></td>
              <td align="center"><input type="submit" name="Submit" value="Encrypt Document" style="width:300px;"/></td>
             </tr>
        </table>
      </form>
		  </p>
		  
          <p><a href="dataOwnerMain.jsp">Back</a></p>
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
