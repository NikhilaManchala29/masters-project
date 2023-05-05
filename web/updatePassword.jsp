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

<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<link rel="stylesheet" type="text/css" href="style_1.css">
<script type="text/javascript" src="js/jquery.js"></script>


<script type="text/javascript">
$(document).ready(function(){
 $("#pass").keyup(function(){
  check_pass();
 });
});

function check_pass()
{
 var val=document.getElementById("pass").value;
 var meter=document.getElementById("meter");
 var no=0;
 if(val!="")
 {
  // If the password length is less than or equal to 6
  if(val.length<=6)no=1;

  // If the password length is greater than 6 and contain any lowercase alphabet or any number or any special character
  if(val.length>6 && (val.match(/[a-z]/) || val.match(/\d+/) || val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)))no=2;

  // If the password length is greater than 6 and contain alphabet,number,special character respectively
  if(val.length>6 && ((val.match(/[a-z]/) && val.match(/\d+/)) || (val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/)) || (val.match(/[a-z]/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/))))no=3;

  // If the password length is greater than 6 and must contain alphabets,numbers and special characters
  if(val.length>6 && val.match(/[a-z]/) && val.match(/\d+/) && val.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/))no=4;

  if(no==1)
  {
   $("#meter").animate({width:'50px'},300);
   meter.style.backgroundColor="red";
   document.getElementById("pass_type").innerHTML="Very Weak <br><font color='pink' size='3'>password length is less than or equal to 6</p>";
  }

  if(no==2)
  {
   $("#meter").animate({width:'100px'},300);
   meter.style.backgroundColor="#F5BCA9";
   document.getElementById("pass_type").innerHTML="Weak <br><font color='brown' size='3'>password length is greater than 6 and contain any lowercase alphabet or any number or any special character";
  }

  if(no==3)
  {
   $("#meter").animate({width:'150px'},300);
   meter.style.backgroundColor="#FF8000";
   document.getElementById("pass_type").innerHTML="Good <br><font color='yelow' size='3'>password length is greater than 6 and contain alphabet,number,special character respectively";
  }

  if(no==4)
  {
   $("#meter").animate({width:'200px'},300);
   meter.style.backgroundColor="#00FF40";
   document.getElementById("pass_type").innerHTML="Strong <br><font color='green' size='3'>password length is greater than 6 and must contain alphabets,numbers and special characters";
  }
 }

 else
 {
  meter.style.backgroundColor="white";
  document.getElementById("pass_type").innerHTML="";
 }
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
        <h2>Change Password Here..</span></h2>
        <p align="center">
            
            <form id="form1" name="form1" method="post" action="changepass.jsp">
                            <table width="508" border="0" align="center" cellpadding="2" cellspacing="2">
							  <tr>
                                <td width="270" height="46" align="center" valign="middle"><label for="label"><strong>User Name</strong></label><label for="name"></label></td>
                                <td width="224"><input readonly value="<%=(String)application.getAttribute("owner")%>" name="username" class="text" /></td>
                              </tr>
                              <tr>
                                <td width="270" height="46" align="center" valign="middle"><label for="label"><strong>Old Password</strong></label><label for="name"></label></td>
                                <td width="224"><input  name="usersite" class="text" /></td>
                              </tr>
                              <tr>
                                <td height="40" align="center" valign="middle"><label for="email"><strong>New Password (required)</strong></label></td>
                                <td><input type="password" id="pass" placeholder="Enter Your Password" name="pass">
<div id="meter_wrapper">
 <div id="meter"></div>
 <h3 align="center"><span id="pass_type"></span></h3>
</div></td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                               <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Submit" /></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><div align="right"><a href="dataOwnerMain.jsp" class="style32"><strong>Back</strong></a></div></td>
                              </tr>
                            </table>
                            <p>&nbsp;</p>
                </form>
            
            
        </p>
        <p align="justify">&nbsp;</p>
        <p>
		
        </p>
        
        
       
      </div>
    </div>
    <div id="column2">
        <h2 align="center">User Menu</h2>
      <ul>
    <li><a href="dataOwnerMain.jsp">HomePage</a></li>
   
	<li><a href="dataOwnerLogin.jsp">LogOut</a></li>
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
