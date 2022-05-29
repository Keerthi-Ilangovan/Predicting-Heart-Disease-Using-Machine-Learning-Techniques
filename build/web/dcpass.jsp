
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script><link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css" />
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="dpass" method="post">
              <%
   String ok=(String)request.getAttribute("ss");
   String msg="";
     String msg1="";
       String msg2="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    msg1=(String)request.getAttribute("msg1");
     msg2=(String)request.getAttribute("msg2");
   }
    %>
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648" align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></td>
              </tr>
            </table></td>
          </tr>
       <tr>
       <td><div class="navbar">
       <a href="doctor.jsp" class="active">Home</a>
	   <a href="vtoken.jsp">Appointment Verify</a>
       <a href="d1.jsp">Test Information</a>
      <a href="d3.jsp">Information Details</a>
     <a href="dcpass.jsp">Change_Password</a>
     <a href="login.jsp">Log_out</a>
</div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article5.png"><table width="960" border="0">
  <tr>
    <td width="356" height="248">&nbsp;</td>
    <td width="596"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="954" height="406" border="0">
          <tr>
            <td width="220" height="194">&nbsp;</td>
            <td width="508"><table width="489" border="0" align="center">
              <tr>
                <td height="31"><div align="center" class="style3 style14"><strong>DOCTOR PASSWORD CHANGE </strong></div></td>
              </tr>
              <tr>
                <td><p>&nbsp;</p>
                    <table width="378" border="0" align="center">
                      <tr>
                        <td width="139"><span class="style14"><strong>Old Password </strong></span></td>
                        <td width="5">&nbsp;</td>
                        <td width="220"><label>
                          <input name="a1" type="password" id="a1" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a1','err_a1');"     onBlur="return txt_empty('a1','err_a1','Name Should Not Be Blank');" value="" />
                          &nbsp;&nbsp;&nbsp;<span id="err_a1"></span> </label></td>
                      </tr>
                      <tr>
                        <td><span class="style14"><strong>New Password </strong></span></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input name="a2" type="password" id="a2" class="displayValue" maxlength="15" style="width:180px"  onChange="return val_zero('a2','err_a2');"     onBlur="return txt_empty('a2','err_a2','Name Should Not Be Blank');"  />
                          &nbsp;&nbsp;&nbsp;<span id="err_a2"></span> </label></td>
                      </tr>
                      <tr>
                        <td><span class="style14"><strong>Retype Password </strong></span></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input type="password" id="a3" name="a3" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('a3','err_a3');"
											onBlur="return pwd_compare('a2','a3','err_a3');" />
                          &nbsp;&nbsp;&nbsp;<span id="err_a3"></span> </label></td>
                      </tr>
                      <tr>
                        <td><span class="style14"></span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><span class="style14">
                          <label> </label>
                        </span></td>
                        <td>&nbsp;</td>
                        <td><label>
                          <input type="submit" name="Submit" value="Save" class="buttons" onClick="return validatePage('a1|a2|a3','err_a1|err_a2|err_a3','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <input type="submit" name="Submit2" value="Cancel">
                        </label></td>
                      </tr>
                    </table>
                  <p><%=msg%></p></td>
              </tr>
            </table></td>
            <td width="212"></td>
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
