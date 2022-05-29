<%-- 
    Document   : login1
    Created on : Mar 2, 2020, 8:53:36 AM
    Author     : PERUMAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	
	
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;

  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 16px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 18px;  
  font-weight: bold;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.active {
  background-color: red;
  color: white;
}
.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>

        <style type="text/css">
<!--
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style36 {
	color: #006600;
	font-weight: bold;
	font-size: 16px;
}
.style37 {font-weight: bold; font-size: 18px; color: #FFFFFF;}
.style42 {
	color: #FF0000;
	font-weight: bold;
}
.style45 {color: #000000; font-weight: bold; font-size: 14px; }
.style46 {color: #FF0000}
.style47 {font-size: 14px}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="login1" method="post">
	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
   }
    %>
    <table width="962" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="956"><table width="956" border="0">
          <tr>
            <td width="950"><table width="950" border="0">
              <tr>
                <td width="285"><img src="image/1_4.jpg" height="131"/></td>
               <td width="648" align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="index.jsp">Home</a>
  <a href="aboutus.jsp">Aboutus</a>
  <a href="register.jsp">User Registration</a>
  <a href="login.jsp">User Login</a>
   <a href="login1.jsp" class="active">Doctor Login</a>
  <a href="login3.jsp" >Admin Login</a>
  </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article5.png"><table width="955" border="0">
  <tr>
    <td width="355" height="248">&nbsp;</td>
    <td width="590"><p align="justify">&nbsp;</p>
      <p align="left" class="style37">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</p>
      <br><br></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="31" ><table width="952" height="360" border="0">
  <tr>
    <td width="147" height="356">&nbsp;</td>
    <td width="631"><table width="512" border="0" align="center">
          <tr>
            <td width="506" height="36" align="center"><span class="style36">DOCTOR LOGIN</span></td>
          </tr>
          <tr>
            <td height="175" align="center"><table  align="center" width="348" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="154" class="style1"><span class="style45">Username <span class="style46">* </span></span></td>
    <td width="8"><label for="textfield"></label>
      <span id="errorcode1" class="error"></span></td>
    <td width="166">
      <label>
  
  <input type="text" id="a1" name="a1" size="25" maxlength="15" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" onBlur="return txt_empty('a1','err_a1','User Name Should Not Be Blank');" /><span id="err_a1"></span>      </label></td>
  </tr>
  <tr>
    <td class="style1"><span class="style45">Password<span class="style46"> * </span></span></td>
    <td><span id="errorcode1" class="error"></span></td>
    <td>
      
	<label>
   
  <input type="password" id="a2" name="a2"  maxlength="15" class="displayValue" onChange="return val_zero('a2','err_a2');" size="25" onBlur="return val_password('a2','err_a2','Password Should Not Be Blank');" /> <span id="err_a2"></span>	</label>  </td>
  </tr>
  <tr>
    <td class="style1 style47">&nbsp;</td>
    <td></td>
    <td>
      <label for="label"></label>     </td>
  </tr>
  <tr>
    <td class="style1 style47">&nbsp;</td>
    <td>&nbsp;</td>
    <td>
      <label for="label2"></label>
      <input type="submit" name="s1" value="Sign in" class="buttons"	onclick="return validatePage('a1|a2','err_a1|err_a2','User Name Should Not Be Blank|Password Should Not Be Blank');"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="s2" value="Cancel" class="buttons"/></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td></td>
    <td>
      <label for="label"></label>     </td>
  </tr>
</table>    
            <p class="style42"><%=msg %></p></td>
          </tr>
        </table></td>
	<td width="160">&nbsp;</td>
  </tr>
</table>
</td>
      </tr>
          <tr>
        <td >&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
