<%-- 
    Document   : d3
    Created on : Mar 15, 2021, 11:58:32 PM
    Author     : WINDOWS 10
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<link rel="stylesheet" type="text/css" href="style.css" />        <style type="text/css">
<!--
.style10 {color: #FFFFFF; font-weight: bold; font-size: 18px; }
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size:18px;
	font-style: italic;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #FFFFFF}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="video" method="post"><%
   String ss=(String)request.getAttribute("ok");
   String msg="";
   if(ss!=null)
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
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="960" border="0">
          <tr>
            <td width="954" height="35" align="center" bgcolor="#006633"><span class="style19">Disease Information </span></td>
          </tr>
          <tr>
            <td align="center"><table width="495" border="0">

          <tr>
            <td><span class="style14"><strong>Disease Id </strong></span></td>
            <td width="10">&nbsp;</td>
            <td width="285"><label>
              <input name="a1" type="text" size="40">
            </label></td>
          </tr>
          <tr>
            <td><span class="style14"><strong>Disease Name</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
              <input name="a2" type="text" size="40">
            </label></td>
          </tr>
           <tr>
            <td><span class="style14"><strong>Symptoms</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
                 <textarea  name="a3" cols="50" rows="6"></textarea>
            </label></td>
          </tr> <tr>
            <td><span class="style14"><strong>Cure</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
            <textarea  name="a4" cols="50" rows="6"></textarea>
            </label></td>
          </tr> <tr>
            <td><span class="style14"><strong>Prevention</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
              <textarea  name="a5" cols="50" rows="6"></textarea>
            </label></td>
          </tr> <tr>
            <td><span class="style14"><strong>Specialist</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
             <textarea  name="a6" cols="50" rows="6"></textarea>
            </label></td>
          </tr> <tr>
            <td><span class="style14"><strong>Side Effect</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
         <textarea  name="a7" cols="50" rows="6"></textarea>
            </label></td>
          </tr>
          <tr>
            <td height="35"><span class="style14"><strong>Disease Video</strong></span></td>
            <td>&nbsp;</td>
            <td><label>
              <input type="file" name="a8">
            </label></td>
          </tr>
          <tr>
            <td><span class="style14"></span></td>
            <td>&nbsp;</td>
            <td><label>
              <input type="submit" name="s1" value="Insert">
            </label>&nbsp;&nbsp;&nbsp;&nbsp;<label>
              <input type="submit" name="s2" value="View">
            </label></td>
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
