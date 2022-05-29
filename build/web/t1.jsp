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
    <body bgcolor="#009999"><form action="verify1" method="post">  <%
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
            <td width="954"><table width="955" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
            <td width="653" align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></td>
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
            <td height="417"><table width="570" border="0" align="center">
              <tr>
                <td width="564" height="40" align="center"><span class="style14">BLOOD TEST VERIFICATION</span></td>
              </tr>
              <tr>
                <td><table width="580" border="0" align="center">
                  <tr>
                    <td width="254"><span class="style14">HEART BEAT BUMBER(hr_la)</span></td>
                    <td width="10"><span class="style14"></span></td>
                    <td width="302" bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a1"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a1" id="a2" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a1','err_a1');" 
											onblur="return val_mobile('a1','err_a1');" />
                &nbsp;&nbsp;&nbsp;eg                60–80</div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">HBA1C(hba1c_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF">
                      <span class="style14">
                      <label for="a2"></label>
                      <label>
                      </span>
                      <div align="left" class="style14">
                <input type="text" name="a2" id="a2" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a2','err_a2');" 
											onblur="return val_mobile('a2','err_a2');" />
                &nbsp;&nbsp;&nbsp;                4–6</div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">BLOOD UREA NITROGEN(bun_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a3"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a3" id="a3" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a3','err_a3');" 
											onblur="return val_mobile('a3','err_a3');" />
                &nbsp;&nbsp;&nbsp;                8–20</div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">CHOLESTEROL(cho_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a4"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a4" id="a4" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a4','err_a4');" 
											onblur="return val_mobile('a4','err_a4');" />
                &nbsp;&nbsp;&nbsp;                0–200</div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">TRIGLYERIDE(tri_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a5"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a5" id="a5" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a5','err_a5');" 
											onblur="return val_mobile('a5','err_a5');" />
                &nbsp;&nbsp;&nbsp; 50-150               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">FASTING GLUCOSE(glu_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a6"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a6" id="a6" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a6','err_a6');" 
											onblur="return val_mobile('a6','err_a6');" />
                &nbsp;&nbsp;&nbsp; 70-110               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">HIGH DENSITY CHOLESTEROL(hdl_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a7"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a7" id="a7" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a7','err_a7');" 
											onblur="return val_mobile('a7','err_a7');" />
                &nbsp;&nbsp;&nbsp; 40-70               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">LOW DENSITY CHOLESTER0L(ldl_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a8"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a8" id="a8" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a8','err_a8');" 
											onblur="return val_mobile('a8','err_a8');" />
                &nbsp;&nbsp;&nbsp; 0-130               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">COAGULATION DISORDERS(pt_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a9"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a9" id="a9" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a9','err_a9');" 
											onblur="return val_mobile('a9','err_a9');" />
                &nbsp;&nbsp;&nbsp; 8-12               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">PARTIAL COAGULATION DISORDERS(aptt_la)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a10"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a10" id="a10" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a10','err_a10');" 
											onblur="return val_mobile('a10','err_a10');" />
                &nbsp;&nbsp;&nbsp; 23.9-34.9</div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">ALBUMIN(alb_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a11"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a11" id="a11" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a11','err_a11');" 
											onblur="return val_mobile('a11','err_a11');" />
                &nbsp;&nbsp;&nbsp; 3.7-5.2               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14">URINE ACID(ua_1)</span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"> <span class="style14">
                      <label for="a12"></label>
                      <label>
                    </span>
                      <div align="left" class="style14">
                <input type="text" name="a12" id="a12" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a12','err_a12');" 
											onblur="return val_mobile('a12','err_a12');" />
                &nbsp;&nbsp;&nbsp; 3.5-8.0               </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                  <tr>
                    <td><span class="style14"></span></td>
                    <td><span class="style14"></span></td>
                    <td bgcolor="#FFFFFF"><span class="style14"></span></td>
                  </tr>
                   <tr>
                    <td><span class="style14"></span></td>
                    <td><span class="style14"></span></td>
                    <td><span class="style14">
                      <input type="submit" name="s1" id="s1" value="BLOOD TEST VERIFIER">
                      &nbsp;&nbsp;&nbsp;
                      <input type="submit" name="s2" id="s2" value="Cancel">
                    </span></td>
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
