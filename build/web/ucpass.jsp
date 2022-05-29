
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 24px;
	font-style: italic;
}
.style13 {
	color: #000000;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #336633}
.style20 {font-weight: bold}
-->
        </style><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
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
.active {
  background-color: red;
  color: white;
}
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
    <body bgcolor="#CCCCCC"><form action="cpass" method="post">
	        <%
   String ok=(String)request.getAttribute("ss");
   String msg="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
   }
    %>

    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648"><div align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="user.jsp">Home</a>
  <a href="custtest.jsp">Test Information</a>
 <a href="cusinform.jsp"><strong>Prescription</a>
 <a href="tokenbooking.jsp">Token booking</a>

<a href="ctoken.jsp">Token Confirm </a> 
<a href="ucpass.jsp" class="active">Change_Password</a>
  <a href="login.jsp">Log_out </a>
 </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article4.png"><table width="960" border="0">
  <tr>
    <td width="355" height="259">&nbsp;</td>
    <td width="595"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="477" ><table width="949" height="474" border="0">
          <tr>
            <td width="943" height="31">
</td>
          </tr>
          <tr>
            <td height="433"><table width="946" border="0">
  <tr>
    <td width="135" height="420">&nbsp;</td>
    <td width="647" align="center"><table width="489" border="0" align="center">
              <tr>
                <td height="31"><div align="center" class="style3 style14"><strong>USER PASSWORD CHANGE </strong></div></td>
              </tr>
              <tr>
                <td align="center">
                <table width="378" border="0" align="center">
                  <tr>
                    <td width="139"><strong>Old Password </strong></td>
                    <td width="5">&nbsp;</td>
                    <td width="220"><label>
                       <input name="a1" type="password" id="a1" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a1','err_a1');"     onblur="return txt_empty('a1','err_a1','Name Should Not Be Blank');" value="" />
  &nbsp;&nbsp;&nbsp;<span id="err_a1"></span>  
                    </label></td>
                  </tr>
                  <tr>
                    <td><strong>New Password </strong></td>
                    <td>&nbsp;</td>
                    <td><label>
                      <input name="a2" type="password" id="a2" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');"  />
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>  
                    </label></td>
                  </tr>
                  <tr>
                    <td><strong>Retype Password </strong></td>
                    <td>&nbsp;</td>
                    <td><label>
                  <input type="password" id="a3" name="a3" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('a3','err_a3');"
											onblur="return pwd_compare('a2','a3','err_a3');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a3"></span></span>  
                    </label></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><label>
                    
                    </label></td>
                    <td>&nbsp;</td>
                    <td><label><input type="submit" name="Submit" value="Save" class="buttons" onClick="return validatePage('a1|a2|a3','err_a1|err_a2|err_a3','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input type="submit" name="Submit2" value="Cancel">
                    </label></td>
                  </tr>
                </table>
                <p><%=msg%></p></td>
              </tr>
            </table></td>
    <td width="142">&nbsp;</td>
  </tr>
</table>
</td>
          </tr>
        </table></td>
      </tr>
      </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
