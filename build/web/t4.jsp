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
    <body bgcolor="#009999"><form action="verify4" method="post">  <%
   String ok=(String)request.getAttribute("ok");
   String msg="";
     String msg1="";
       String msg2="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    msg1=(String)request.getAttribute("a1");
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
        <td height="378" ><table width="958" height="421" border="0">
          
          <tr>
            <td height="417"><table width="631" border="0" align="center">
              <tr>
                <td width="625" height="40" align="center"><span class="style14">Density ranges of adult cholesterol and triglyceride</span></td>
              </tr>
              <tr>
                <td><table width="524" border="0" align="center">
                  <tr>
                    <td width="244"><span class="style14">Total cholesterol (non-fast)</span></td>
                    <td width="10"><span class="style14"></span></td>
                    <td width="256" bgcolor="#FFFFFF">
                      <span class="style14">
                      <label for="a1"></label>
                      <label>
                      </span>
                      <div align="left" class="style14">
                        <input type="text" name="a1" id="a1" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a1','err_a1');" 
											onblur="return val_mobile('a1','err_a1');" />
                        mg/dl </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                   <tr>
                    <td width="244"><span class="style14">Low density cholesterol (12 h fast)</span></td>
                    <td width="10"><span class="style14"></span></td>
                    <td width="256" bgcolor="#FFFFFF">
                      <span class="style14">
                      <label for="a2"></label>
                      <label>
                      </span>
                      <div align="left" class="style14">
                        <input type="text" name="a2" id="a2" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a2','err_a2');" 
											onblur="return val_mobile('a2','err_a2');" />
                       mg/dl                </div>
                      <span class="style14">
                      </label>
                      </span></td>
                  </tr>
                   <tr>
                    <td width="244"><span class="style14">Triglyceride (12 h fast)</span></td>
                    <td width="10"><span class="style14"></span></td>
                    <td width="256" bgcolor="#FFFFFF">
                      <span class="style14">
                      <label for="a3"></label>
                      <label>
                      </span>
                      <div align="left" class="style14">
                        <input type="text" name="a3" id="a3" class="displayValue" maxlength="3"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a3','err_a3');" 
											onblur="return val_mobile('a3','err_a3');" />
                         mg/dl               </div>
                      <span class="style14">
                      </label>
                      </span></td>
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
        <td><%=msg1%><%=msg%></td>
      </tr>
    </table>
    
</form>
    </body>
</html>
