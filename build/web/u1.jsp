<%-- 
    Document   : u1
    Created on : Mar 12, 2021, 1:13:00 PM
    Author     : WINDOWS 10
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style23 {
	font-size: 12px;
	color: #000000;
}
.style24 {color: #000000}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
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
  <a href="t.jsp">Diabetics_Test</a>
  <a href="user1.jsp">Test Information</a> 
<a href="u2.jsp" class="active">Information</a> 
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

      </tr>
      <tr>
        <td height="282" align="center"><table width="575" border="0">
          <tr>
            <td width="569" height="40"><div align="center"><span class="style5 style9 style24">Diease Detail</span></div></td>
          </tr>
          <tr>
            <td height="147" align="center"><table width="495" border="0">

           <%

  String pro1=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery("select * from detail");
  %> 
          <tr>
            <td height="35"><span class="style17 style23">Diease Type </span></td>
			<td>&nbsp;</td>
            <td><em><strong>
                <label>
     
          
                <div align="left"><em><strong>
                <select name="a1" style="width:180px" class="style16">
                  <%
          while (rs1.next()) {
				pro1=rs1.getString(2);
           %>
                  <option><%=pro1%></option>
                  <%} %>
                </select>
                </strong></em></div>
              <em><strong>
              </label>
              </strong></em></td> 
          </tr>
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><label>
              <input type="submit" name="s1" value="Insert">
            </label>&nbsp;&nbsp;&nbsp;&nbsp;<label>
              <input type="submit" name="s2" value="View">
            </label></td>
          </tr>
        </table>
              <p>&nbsp;</p><%if(request.getParameter("s1")!=null){
			  
			  String a1=request.getParameter("a1");
                           String pro2=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery("select * from detail where disease='"+a1+"' ");
			  %>
                                <%
                                while (rs1.next())
                                {
                                    pro2="video\\"+rs1.getString(1)+".mpeg";
                                                               }
           %>
			   <OBJECT id="VIDEO" CLASSID="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" type="application/x-oleobject" width="520" height="240">

                              <PARAM NAME="URL" VALUE="<%=pro2%>">
                                                <PARAM NAME="enabled" VALUE="True">
                                                  <PARAM NAME="AutoStart" VALUE="False">
                                                        <PARAM name="PlayCount" VALUE="3">
                                                            <PARAM name="Volume" VALUE="50">
                                                                <PARAM NAME="balance" VALUE="0">
                                                                    <PARAM NAME="Rate" VALUE="1.0">
                                                                        <PARAM NAME="Mute" VALUE="False">
                                                                            <PARAM NAME="fullScreen" VALUE="False">
                                                                                <PARAM name="uiMode" VALUE="full">

                                                                                    </OBJECT> <%
        }
                                               
        catch(Exception e)
        {
        out.println(e);
        } %>
			  <%}%>
			  </td>
          </tr>
        </table></td>
      </tr>
         
    </table>
    
</form>
    </body>
</html>

