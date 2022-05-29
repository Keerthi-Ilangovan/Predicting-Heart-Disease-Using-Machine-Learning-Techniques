
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><meta name="viewport" content="width=device-width, initial-scale=1">
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
.active {
  background-color: red;
  color: white;
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
        <style type="text/css">
<!--
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #FF0000}
-->
        </style><link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>

		<script type="text/javascript">
<!--
function calculateAge(inputFieldId, outputFieldId, alert_18){

var age;

var input = document.getElementById(inputFieldId).value;

// Past date info

var pyear = parseInt(input.substring(6,10));
var pmonth = parseInt(input.substring(3,5)) - 1;
var pday = parseInt(input.substring(0,2));

// Today info
today = new Date();
year = today.getFullYear() ;
month = today.getMonth();
day = today.getDate();

if ( month < pmonth ){
age = year - pyear - 1;
}
else if ( month > pmonth ){
age = year - pyear;
}
else if ( month == pmonth ){
if ( day < pday ){
age = year - pyear - 1;
}
else if ( day > pday ){
age = year - pyear;
}
else if ( day == pday ){
age = year - pyear;
}
}
document.getElementById(outputFieldId).value = age;



}
//-->
</script>
        <style type="text/css">
<!--
.style20 {
	color: #006600;
	font-weight: bold;
	font-size: 16px;
}
.style21 {
	color: #990000;
	font-size: 18px;
}
.style26 {font-size: 14px; font-weight: bold; }
.style27 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style27 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="register" method="post">    <%
   String ok=(String)request.getAttribute("ok");
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
    <table width="967" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="961"><table width="960" border="0">
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
  <a href="index.jsp">Home</a>
  <a href="aboutus.jsp">Aboutus</a>
  <a href="register.jsp"  class="active">User Registration</a>
  <a href="login.jsp">User Login</a>
   <a href="login1.jsp">Doctor Login</a>
  <a href="login3.jsp" >Admin Login</a>
  </div></td>
          </tr>
        </table></td>
      </tr>
    
      <tr>
        <td height="31" ><table width="961" height="368" border="0">
  <tr>
    <td width="147" height="342">&nbsp;</td>
    <td width="631"><table width="630" border="0" align="center">
          <tr>
            <td width="624" height="38" align="center"><span class="style20">PATIENT REGISTRATION </span></td>
          </tr>
          <tr>
            <td  align="center">
              <table width="436" border="0" align="center">
			  
			   <tr>
            <td width="168" height="32"><span class="style26">UserName<span class="style19"> *</span></span></td>
                        <td width="258"> <label>
                          <div align="left">
                            <input name="a1" type="text"  id="a1" style="width:180px" maxlength="15"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');"  onBlur="return txt_empty('a1','err_a1','User Name Should Not Be Blank');" />
                            &nbsp;&nbsp;&nbsp;<span id="err_txtUserName"></span></div>
                        </label>              </td>
          </tr>
          <tr>
            <td height="34"><span class="style26">Password <span class="style19">*</span></span></td>
       
            <td>
              <label>
              <div align="left">
  <input type="password" id="a2" name="a2"  style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('a2','err_a2');"
											onblur="return val_password('a2','err_a2,'Password Should Not Be Blank');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span> </div>
              </label></td>
          </tr>
          <tr>
            <td height="34"><span class="style26">Confirm Password <span class="style19">*</span></span></td>
           
            <td>
			  <div align="left">
  <input type="password" id="a3" name="a3" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('a3','err_a3');"
											onblur="return pwd_compare('a2','a3','err_a3');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a3"></span> </div></td>
          </tr>
			  
			  
			  
			  
			            <tr>
            <td width="168" height="38"><span class="style26">Name <span class="style19">*</span></span></td>
            <td width="258"><div align="left">
  <input name="a4" type="text" id="a4" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a4','err_a4');"     onblur="return txt_empty('a4','err_a4','Name Should Not Be Blank');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a4"></span> </div></td>
          </tr>
        
          <tr>
            <td height="42"><span class="style26">Date of Birth<span class="style19"> *</span></span></td>
            <td><label>
                    <div align="left">
                      <input type="text" style="width:180px" id="birthdate" name="birthdate" class="displayValue"  readonly="true" onChange="return val_zero('birthdate','err_birthdate');" 
 onblur="calculateAge('birthdate','age','true')"/>  
                      <a href="javascript:NewCssCal('birthdate','ddmmyyyy')"><img src="image/cal.jpg" alt="" width="25" height="21" /></a>
                               <span id="err_birthdate"></span>                            </div>
            </label></td>
          </tr>
		    <tr>
            <td height="39"><span class="style26">Age <span class="style19">*</span></span></td>
            <td><label>
                    <div align="left">
  <input type="text" name="age" id="age" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('age','err_age');" 
											onblur="return val_mobile('age','err_age');" />
  &nbsp;&nbsp;&nbsp;<span id="err_age"></span>                            </div>
            </label></td>
          </tr>
  
          <tr>
            <td height="62"><span class="style26">Address<span class="style19"> *</span></span></td>
            <td><label>
              <div align="left">
  <textarea id="a5" name="a5" style="width:180px" class="displayValue" onChange="return val_zero('a5','err_a5');"  onBlur="return txt_empty('a5','err_a5','Address Should Not Be Blank');"></textarea>
  &nbsp;&nbsp;<span id="err_a5"></span>                </div>
            </label></td>
          </tr>
           <tr>
            <td height="36"><span class="style26">Mobile <span class="style19">*</span></span></td>
            <td><label>
              <div align="left">
                <input type="text" name="a6" id="a6" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a6','err_a6');" 
											onblur="return val_mobile('a6','err_a6');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a6"></span>                </div>
            </label></td>
          </tr>
		   <tr>
            <td height="38"><span class="style26">Email <span class="style19">*</span></span></td>
            <td><label>
              <div align="left">
  <input name="a7" id="a7" type="text" maxlength="50"  class="displayValue" style="width:180px" onChange="return val_zero('a7','err_a7');"  onblur="return val_email1('a7','err_a7');"/>
  &nbsp;&nbsp;&nbsp;<span id="err_a7"></span>                </div>
            </label></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><label>
              <div align="left">
  <input type="submit" name="Save" value="Submit" class="buttons" onClick="return validatePage('a1|a2|a3|a4|birthdate|age|a6|a7','err_a1|err_a2|err_a3|err_a4|err_birthdate|err_age|err_a6|err_a7','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="Cancel" value="Cancel">
                </div>
            </label></td>
          </tr>
                </table>
				<strong><%=msg%></strong><br><br>
                 <span class="style21"><%=msg1%></span></td>
          </tr>
        </table></td>
	<td width="169">&nbsp;</td>
  </tr>
</table>
</td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
