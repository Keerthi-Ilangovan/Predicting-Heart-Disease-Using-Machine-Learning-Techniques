<%-- 
    Document   : u2
    Created on : Mar 12, 2021, 1:13:11 PM
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
  <a href="t.jsp">Heart_Test</a>
  <a href="user1.jsp">Test Information</a> 
<a href="u2.jsp">Information</a> 
   <a href="u1.jsp" class="active">Video</a> 
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
        <td height="282"><table width="958" height="421" border="0">
          
          <tr>
            <td height="417"><p>&nbsp;</p>
            <table width="473" border="0" align="center">
              <tr>
                <td width="373" ALIGN="CENTER"><span class="style14">INFORMATION SYSTEM </span></td>
              </tr>
              <tr>
                <td><table width="401" border="0" align="center">
                  <tr>
                    <td width="159" class="style14">Disease</td>
                    <td width="10" class="style14">&nbsp;</td>
                    <%

  String pro1=null;
 		try {
			int flag = 0;
  
			String url1 = "jdbc:mysql://localhost:3306/COVID";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select *  from detail ");
  %> 
                    <td width="251" class="style14"><label>
                      <div align="left">
                        <select name="a1" value="" style="width:180px;" >
                          <%
          while (rs1.next()) {
				pro1= rs1.getString(2);
           %>
                          <option><%=pro1%></option>
                          <%} %>
                          </select></div>
                      
                      </label></td>
                    
                    <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
                  </tr>
                  <tr>
                    <td class="style14">&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                    <td class="style14"><input type="submit" name="s1" id="s1" value="View"></td>
                  </tr>
                </table></td>
              </tr>
            </table>
            <%if(request.getParameter("s1")!=null){%><table width="434" border="0" align="center">     <%

  
 		try {
			int flag = 0;
  
			String url1 = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select *  from detail where disease='"+request.getParameter("a1")+"' ");
  %>   <%
          while (rs1.next()) {
				
           %>
                <tr>
                  <td width="159"><span class="style14">DISEASE</span></td>
                  <td width="265"><strong><%=rs1.getString(2)%></strong></td>
                </tr>
				<tr>
                  <td><span class="style14"></span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><span class="style14">SYMPTOMS</span></td>
                  <td><%=rs1.getString(3)%></td>
                </tr>
				<tr>
                  <td><span class="style14"></span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><span class="style14">CURE</span></td>
                  <td><%=rs1.getString(4)%></td>
                </tr>
				<tr>
                  <td><span class="style14"></span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><span class="style14">PREVENTION</span></td>
                  <td><%=rs1.getString(5)%></td>
                </tr>
				<tr>
                  <td><span class="style14"></span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><span class="style14">SPECIALIST</span></td>
                  <td><%=rs1.getString(6)%></td>
                </tr>
				<tr>
                  <td><span class="style14"></span></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td><span class="style14">SIDE EFFECT</span></td>
                  <td><%=rs1.getString(7)%></td>
                </tr>  <%} %>  <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
            </table>
            <%}%>
            </td>
          </tr>
        </table></td>
      </tr>
         
    </table>
    
</form>
    </body>
</html>


