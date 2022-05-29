<%-- 
    Document   : t
    Created on : Mar 12, 2021, 1:14:36 PM
    Author     : WINDOWS 10
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

        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18px;
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
.style23 {font-size: 12px}
-->
        </style>
</head>
    <body bgcolor="#009999"><form action="verify" method="post">  <%
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
            <td width="954"><table width="954" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="652"><div align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></div></td>
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
        <td height="378" ><table width="958" height="421" border="0">
          
          <tr>
            <td height="417"><table width="659" border="0" align="center">
              <tr>
                <td width="653" height="40" align="center">TEST VERIFICATION</td>
              </tr>
              <tr>
                <td><table width="479" border="0" align="center">
                  <tr>
                    <td width="221"><span class="style24">Gender</span></td>
                    <td width="10"><span class="style24"></span></td>
                    <td width="234" bgcolor="#FFFFFF"><span class="style24">
                      <input type="radio" name="a1" id="a1" value="Male">
                      <label for="a1">Male</label>
                      <input type="radio" name="a1" id="a1" value="Female">
                      <label for="a1">Female</label>
                    </span></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Age</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF">
                      <span class="style24">
                      <label for="a2"></label>
                      <label>
                      <div align="left" class="style24">
                <input type="text" name="a2" id="a2" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a2','err_a2');" 
											onblur="return val_mobile('a2','err_a2');" />
                &nbsp;&nbsp;&nbsp;                </div>
                      <span class="style24">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Smoking</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a3" value="Never" id="a3_0">
                        Never</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="Past" id="a3_1">
                        Past</label>
                      <br>
                      <label>
                        <input type="radio" name="a3" value="Current" id="a3_2">
                        Current</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Overweight</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a4" value="YES" id="a4_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a4" value="NO" id="a4_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Alcohol Intake</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a5" value="Never" id="a5_0">
                        Never</label>
                      <br>
                      <label>
                        <input type="radio" name="a5" value="Past" id="a5_1">
                        Past</label>
                      <br>
                      <label>
                        <input type="radio" name="a5" value="Current" id="a5_2">
                        Current</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">High Salt Diet</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a6" value="YES" id="a6_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a6" value="NO" id="a6_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">High Saturated fat diet</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
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
                    <td><span class="style24">Exercise</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a8" value="Never" id="a8_0">
                        Never</label>
                      <br>
                      <label>
                        <input type="radio" name="a8" value="Regular" id="a8_1">
                       Regular</label>
                      <br>
                      <label>
                        <input type="radio" name="a8" value="High" id="a8_2">
                        High</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Sedentary Lifestyle/ Inactivity</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a9" value="YES" id="a9_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a9" value="NO" id="a9_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Hereditary</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a10" value="YES" id="a10_0">
                        Yes</label>
                      <br>
                      <label>
                        <input type="radio" name="a10" value="NO" id="a10_1">
                        No</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Bad Cholestrol</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a11" value="VeryHigh" id="a11_0">
                        Very High > 200</label>
                      <br>
                      <label>
                        <input type="radio" name="a11" value="High" id="a11_1">
                       High <160 and > 200</label>
                      <br>
                      <label>
                        <input type="radio" name="a11" value="Normal" id="a11_2">
                        Normal <160</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Blood Pressure</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a12" value="High" id="a12_0">
                         High (> 200</label>
                      /160
                      )<br>
                      <label>
                        <input type="radio" name="a12" value="Low" id="a12_1">
                       Low (<119/79)</label>
                      <br>
                      <label>
                        <input type="radio" name="a12" value="Normal" id="a12_2">
                     Normal (130/89)</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Blood Sugar</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a13" value="High" id="a13_0">
                         High (> 120 && <400)</label>
                      <br>
                      <label>
                        <input type="radio" name="a13" value="Normal" id="a13_1">
                     Normal (>90 & <120)</label>
                      <br>
                      <label>
                        <input type="radio" name="a13" value="Low" id="a13_2">
                  Low (&lt;90)</label>
                      <br>
                    </p></td>
                  </tr>
                  <tr>
                    <td><span class="style24">Heart Rate</span></td>
                    <td><span class="style24"></span></td>
                    <td bgcolor="#FFFFFF"><p class="style24">
                      <label>
                        <input type="radio" name="a14" value=" High" id="a14_0">
                         High (> 100bpm)</label>
                      <br>
                      <label>
                        <input type="radio" name="a14" value="Normal" id="a14_1">
                        Normal (60 to 100bpm)</label>
                      <br>
                      <label>
                        <input type="radio" name="a14" value="Low" id="a14_2">
                        Low (<90)</label>
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
                    <td><span class="style21">
                      <input type="submit" name="s1" id="s1" value="Submit">
                      &nbsp;&nbsp;&nbsp;
                      <input type="submit" name="s2" id="s2" value="Cancel">
                    </span></td>
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

