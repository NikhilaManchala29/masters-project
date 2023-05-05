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
        <h2>Registration Form </h2>
       
        
        
        <p>
		<form action="insertData.jsp" method="post" id="sendemail">
		<table width="519" border="0">
                <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">User Name  (required)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                  <td width="298"><input type="text" id="userid" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">Password (required)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                    <td> <input type="password" id="userid" name="pass" class="text" />  </td>
                </tr>
                     <tr>
                  <td height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">User Type</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                    <td> <select name="utype" style="width:300px;" class="text" > 
                            <option>----Choose Type----</option>
                            <option value="Owner">Data Owner</option>
                             <option value="User">Data User</option>
                        </select> </td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15">Email Address (required)</div>
                    <span class="style15">
                    </label>                  
                    </span></td>
                  <td> <input id="email" name="email" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Mobile Number (required)</div></td>
                  <td><input id="mobile" name="mobile" class="text" /></td>
                </tr>
                <tr>
                  <td height="70" bgcolor="#FFFF00"><div align="center" class="style15">Your Address</div></td>
                  <td> <textarea id="address" name="address" rows="3" cols="40"></textarea></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Date of Birth (required)</div></td>
                  <td>   <input type="date" id="dob" name="dob" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Select Gender (required)</div></td>
                  <td> <select id="s1" name="gender" style="width:300px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>				</td>
                </tr>
				<tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Select Country (required)</div></td>
                  <td> <select id="cloud" name="cloud" style="width:300px;" class="text1">
                              <option>--Select--</option>
                              <option>U.K</option>
                              <option>U.S.A</option>
                            
							  
                </select>				</td>
                </tr>
                <tr>
                  <td height="40" bgcolor="#FFFF00"><div align="center" class="style15">Enter Postal Code (required)</div></td>
                  <td><input id="pincode" name="pincode" class="text" /></td>
                </tr>
               
                <tr>
                  <td height="88"></td>
                  <td><div align="right">
                    <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                  </div></td>
                </tr>
          </table>
		</form>
        </p>
       
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
   <li><a href="dataOwnerLogin.jsp">Data Owner</a></li>
    <li><a href="dataUserLogin.jsp">Data User</a></li>
    <li><a href="cloudServerLogin.jsp">Administrator</a></li>
    
      </ul>
    </div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
  
</div>
</body>
</html>
