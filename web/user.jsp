
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

      </tr>
      <tr><%
HttpSession so = request.getSession(true);
System.out.println("select * from register where uname='"+so.getAttribute("un1")+"'");
int index=0;
	try
	{  
            
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");

 String f12=sdf1.format(date);
	  

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                int vv=0,flag=1;
                  ResultSet rs = st.executeQuery("select * from register where uname='"+so.getAttribute("un1")+"'");
		if(rs.next())
			{ 
%>
        <td height="282"><p class="style34">Welcome <%=rs.getString(2)%></p>
          <table width="891" border="1" align="center">
  <tr>
    <td width="431" height="89"><table width="499" border="1" bordercolor="#000000" align="center" > 
           
          <tr>
            <td width="207" height="39"><div align="right" class="style14"><span class="style33">User ID : </span></div></td>
            <td width="9">&nbsp;</td>
            <td width="261"><span class="style33"><%=rs.getString(1)%></span></td>
          </tr>
          <tr>
            <td height="39"><div align="right" class="style14"><span class="style33">User Name : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(2)%></span></td>
          </tr>
          <tr>
            <td height="37"><div align="right" class="style14"><span class="style33">Date of Birth : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(5)%></span></td>
          </tr>
          <tr>
            <td height="29"><div align="right" class="style14"><span class="style33">Age : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(6)%></span></td>
          </tr>
          <tr>
            <td height="43"><div align="right" class="style14"><span class="style33">Mobile :</span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(8)%></span></td>
          </tr>
		  <tr>
            <td height="50"><div align="right" class="style14"><span class="style33">Email Id: </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(9)%></span></td>
          </tr>
		<%}}
	catch (Exception e) {
		out.println(e);
	}%>
      </table></td>
    <td width="444"><img src="image/user.png" width="374" height="252"/></td>
  </tr>
</table>
          <p>&nbsp;</p></td>
      </tr>
         
    </table>
    
</form>
    </body>
</html>
