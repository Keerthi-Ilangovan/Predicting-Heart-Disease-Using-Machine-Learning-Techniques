<%-- 
    Document   : contactus
    Created on : Oct 13, 2012, 10:36:53 AM
    Author     : Perumal S
--%>

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
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</style><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <body bgcolor="#009999"><form action="verify2" method="post">  <%
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
  <a href="user.jsp">Home</a>
  <a href="t.jsp" class="active">Heart_Test</a>
  <a href="user1.jsp">Test Information</a> 
<a href="u2.jsp">Information</a> 
   <a href="u1.jsp">Video</a> 
 <a href="tokenbooking.jsp">Token_booking</a>
<a href="ctoken.jsp">Token_Confirm </a> 

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
        <td height="955" ><table width="958" height="821" border="0">
          
          <tr>
            <td height="817"><table width="631" border="0" align="center">
              <tr>
                <td width="625" height="40" align="center"><span class="style14">TEST VERIFICATION</span></td>
              </tr>
              <tr>
                <td height="652"><table width="479" border="0" align="center">
                  <tr>
                    <td width="230"><span class="style14">GENDER</span></td>
                    <td width="10">&nbsp;</td>
                    <td width="234" bgcolor="#FFFFFF"><span class="style14">
                      <input type="radio" name="a1" id="a1" value="Male">
                      <label for="a1">Male</label>
                      <input type="radio" name="a1" id="a1" value="Female">
                      <label for="a1">Female</label>
                    </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">AGE</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF">
                      <span class="style14">
                      <label for="a2"></label>
                      <label>
                      </span>
                      <div align="left" class="style14">
                <input type="text" name="a2" id="a2" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a2','err_a2');" 
											onblur="return val_mobile('a2','err_a2');" />
                &nbsp;&nbsp;&nbsp;                </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">BLOOD TYPE</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p class="style14">
                      <label>
                        <input type="radio" name="a3" value="O+" id="a3_0">
                        O+</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="O-" id="a3_1">
                        O-</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="A+" id="a3_2">
                        A+</label>
                      <br>
                       <input type="radio" name="a3" value="A-" id="a3_3">
                        A-</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="B+" id="a3_4">
                        B+</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="AB+" id="a3_5">
                        AB+</label>
                      <br>
                      <input type="radio" name="a3" value="AB-" id="a3_5">
                        AB-</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">MARITAL CONDITION</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p class="style14">
                      <label>
                        <input type="radio" name="a4" value="MARRIED" id="a4_0">
                        MARRIED</label>
                      <br>
                      <label>
                        <input type="radio" name="a4" value="UNMARRIED" id="a4_1">
                        UNMARRIED</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">SMOKING HABIT</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p class="style14">
                      <label>
                        <input type="radio" name="a5" value="Yes" id="a5_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a5" value="No" id="a5_1">
                        No</label>
                      <br>
                     
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">DRINKING HABIT</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p class="style14">
                      <label>
                        <input type="radio" name="a6" value="Yes" id="a6_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a6" value="No" id="a6_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">BODY MASS INDEX(bmi_1)</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p class="style14">
                      <label>
                        <input type="radio" name="a7" value="YES" id="a7_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a7" value="NO" id="a7_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">PERCENTAGE BODY FAT(bfat_1)</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p>
                      <label for="a8"></label>
                      <input type="text" name="a8" id="a8">
                  
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style14">WAIST-AND -HIP RATIO(wb_1)</span></td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF"><p>
                      <label for="a9"></label>
                      <input type="text" name="a9" id="a9">
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td bgcolor="#FFFFFF">&nbsp;</td>
                  </tr>
                   <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="s1" id="s1" value="Submit">&nbsp;&nbsp;&nbsp;<input type="submit" name="s2" id="s2" value="Cancel"></td>
                  </tr>
                   <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
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
