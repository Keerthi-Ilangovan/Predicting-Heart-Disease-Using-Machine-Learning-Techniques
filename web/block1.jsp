
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

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
<link rel="stylesheet" type="text/css" href="style.css" />        <style type="text/css">
<!--
.style10 {color: #FFFFFF; font-weight: bold; font-size: 14px; }
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 14px;
	font-style: italic;
}
.style14 {
	color: #000000;
	font-size: 18px;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #000000}
.style21 {font-size: 14px}
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
                <td width="648"><div align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="admin.jsp" >Home</a>
 <a href="patientinform.jsp">Patient Details</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Master Screen 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="pharmacydescribtion.jsp">Add Pharmacy Information</a>
     <a href="testprescribed.jsp">Add Test Information</a>
   
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Registration<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="dregister.jsp">Doctor Register</a>
      <a href="lregister.jsp">Worker Register</a>
   
    </div>
	
  </div>   <div class="dropdown">
    <button class="dropbtn" input type="hidden">History</button>
    <div class="dropdown-content">
      <a href="block1.jsp" class="active">Login Block</a>
      <a href="block2.jsp">Test Block</a>
      <a href="historyblock.jsp">History Block</a>
    </div>
	
  </div><a href="login.jsp">Log_out</a>
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
      <span class="style21"><br><br>
	  <br>
          </span><p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="924" border="0">
  <tr>
    <td width="918" align="center"><H1 class="style14">Login Block </H1> </td>
  </tr>
  <tr>
    <td class="style19"><table width="906" border="0" align="center">
              <tr>
                <td width="900"><table width="899" height="43" border="3" >
   <tr>
      <td width="80" height="33" ><div align="center" class="style21 style3 style19">hashblock</div></td>
     
      <td width="126"><div align="center" class="style21 style3 style19"> transactions</div></td>
	  <td width="89"><div align="center" class="style21 style3 style19">Username</div></td>
      
	    <td width="121"><div align="center" class="style21 style3 style19">Date</div></td>
		  <td width="95"><div align="center" class="style21 style3 style19">Status</div></td>
	    <td width="148"><div align="center" class="style21 style3 style19">Form</div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="895" border="1"  align=center>

    <% int index=0;
	try
	{  
        
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phrs";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from loginblock ORDER BY DATES DESC");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
	
    <tr>
      <td width="79" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
               
               <td width="124"><div align="center"><%=rs.getString(2)%></div></td>
        <td width="92"><div align="center"><%=rs.getString(3)%></div></td>
     
	         <td width="119"><div align="center"><%=rs.getString(5)%></div></td>
        <td width="96"><div align="center"><%=rs.getString(6)%></div></td>
	         <td width="147"><div align="center"><%=rs.getString(7)%></div></td>
    <%
  index++;
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
    </table></td>
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
