<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Scanner"%>

<%@page import="java.sql.PreparedStatement"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page import="com.oreilly.servlet.*"%>
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
	color:  blue;
	font-weight: bold;
	
}
-->
</style>
</head>
<body>
    <%
            if(request.getParameter("mese")!=null)
            {%>
            <script>alert('The Given Username is Already Existed.!');</script>  
            <%}if(request.getParameter("message")!=null)
            {%>
            <script>alert('Your Account Details Saved!\n Please Upload Your Password Pattern Here..!');</script>  
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
        <h2 align="center">Pattern Based Passwords</h2>
        <h3 align="center"><font color="red">* it can include several identical Passwords</font></h3>
        
        
        <p>
		<form action="insertPassword.jsp" method="post" id="sendemail">
                    <table width="519" border="0" height="700"><font size="4">
             
                
                    <%String ptype=(String)session.getAttribute("ptype");
                    String uname=(String)session.getAttribute("uname");
                    String dob=(String)session.getAttribute("dob");
                    String mobile=(String)session.getAttribute("mobile");
                     String[] namesList=ptype.split(","); 
                     String p1=null,p2=null,p3=null,p4=null,p5=null,p6=null;
                     
for(String name : namesList){
    if(name.equalsIgnoreCase("Reversing"))
    {
        String reverse = "";
        String original =uname;
        int length = original.length();
        for (int i = length - 1 ; i >= 0 ; i--)
                 reverse = reverse + original.charAt(i); p1=reverse;
        %>
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                        <div align="center" class="style15"><font color="blue">Reversing Pattern Password<br>(Hash Value)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                    <td width="298"><font color="brown" size="3"><B><%=p1%><br>[<%=new Hashcat().encryptThisString(p1)%>]</b></font></td>
                </tr>        
                        
                        <%
       
    
    }
    if(name.equalsIgnoreCase("Replacing"))
    {
        String r1=uname.replace('o','0');
        String r2=r1.replace('s','$');
        String r3=r2.replace('a','3');
        String r4=r3.replace('e','@');
        String r5=r4.replace('i','0');
        String r6=r5.replace('u','#');
        p2=r6+""+uname;
    %>
                        
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Replacing Pattern Password</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                   <td width="298"><font color="brown" size="3"><B><%=r6%><br>[<%=new Hashcat().encryptThisString(r6)%>]</b></font></td>
                </tr>               
                        <%
        
    }
    if(name.equalsIgnoreCase("Capitalizing"))
    {
 %>
                        
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Capitalizing Pattern Password</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                      <td width="298"><font color="brown" size="3"><B><%=uname.substring(1, 5).toUpperCase()+""+mobile.substring(2,9)%><br>[<%=new Hashcat().encryptThisString(uname.substring(1, 5).toUpperCase()+""+mobile.substring(2,9))%>]</b></font></td>
                    
                </tr>               
                        <%
    }
    if(name.equalsIgnoreCase("Special"))
    {
      String startDateString =dob;
      SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM");
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
      p4=sdf2.format(sdf.parse(startDateString))+"@"+uname.substring(2,4);
     %>
                        
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Special Pattern Password</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                      <td width="298"><font color="brown" size="3"><B><%=p4%><br>[<%=new Hashcat().encryptThisString(p4)%>]</b></font></td>
              
                </tr>               
                        <%
    }
    if(name.equalsIgnoreCase("Mixed"))
    {
        String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String Small_chars = uname;
        String numbers = mobile;
                String symbols = "!@#$%^&*)";
  
         int len =8;
        String values = Capital_chars + Small_chars +
                        numbers + symbols;
  
        // Using random method
        Random rndm_method = new Random();
  
        char[] password = new char[len];
  
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            password[i] =
              values.charAt(rndm_method.nextInt(values.length()));
  
        }
         %>
                        
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Mixed Pattern Password</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                    <td width="298"><font color="brown" size="3"><B><%=password%><br>[<%=new Hashcat().encryptThisString(""+password)%>]</b></font></td>
              
                </tr>               
                        <%
    }
    if(name.equalsIgnoreCase("Sequencing"))
    {
        p6=uname+""+uname;
 %>
                        
            <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Sequencing Pattern Password</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                    <td width="298"><font color="brown" size="3"><B><%=p6%><br>[<%=new Hashcat().encryptThisString(p6)%>]</b></font></td>
              
                </tr>               
                        <%
    }
    
}
                    %>
                     <tr>
                  <td width="211" height="40" bgcolor="#FFFF00">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                    <div align="center" class="style15"><font color="blue">Pattern Based Dictionary Words</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                   
                            <td width="298"><font color="brown"><B>
                    <%                          
                    new PatternbasedDictionaryAttack().setData(uname.substring(0,1).toUpperCase());
                                                        String query="select * from patternattackers"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while( rs.next() )
					   		{   
                                                          %> <%=rs.getString(1)+","%><%
                                                           
                                                        }
                            
                            
                            
                            %>
                            </b></font></td>
                          
                            
                </tr> 
                    <h3 align="center"><font color="red">*if the given generated Password Pattern is not Strong then Upload Your Password.</font></h3>
               
                    
                    
                    
                 <tr>
                  <td width="211" height="40" bgcolor="Red">
                    <span class="style13"><span class="style9">
                    <label for="label">
                    </span>
                        <div align="center" class="style15"><font color="white"><b>Upload Password (required)</div>
                    <span class="style15">
                    </label>                  
                    </span>                    <div align="center" class="style15"></div></td>
                  <td width="298"><input type="text" id="userid" name="userid" class="text" required/></td>
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
                    </font>
      </div>
    </div>
    <div id="column2">
      <h2>Menu</h2>
      <ul>
    <li><a href="index.html">Home</a></li>
    
    <li><a href="dataOwnerLogin.jsp">User</a></li>
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
