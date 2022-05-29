<%-- 
    Document   : d2
    Created on : 18 Apr, 2020, 2:16:52 AM
    Author     : admin
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
                <td width="648"><div align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="user.jsp" class="active">Home</a>
  <a href="custtest.jsp">Test Information</a>
 <a href="cusinform.jsp"><strong>Prescription</a>
 <a href="tokenbooking.jsp">Token booking</a>
<a href="ctoken.jsp">Token Confirm </a> 
<a href="ucpass.jsp">Change_Password</a>
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
<%
HttpSession so = request.getSession(true);
%>
      </tr>
      <tr>
        <td height="282"><table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="877" height="43" border="3" >
   <tr>
      <td width="62" height="33" ><div align="center" class="style21 style3 style14"><strong>LId</strong></div></td>
      <td width="96"><div align="center" class="style21 style3 style14"><strong>User Id </strong></div></td>
      <td width="127"><div align="center" class="style21 style3 style14"><strong> Name </strong></div></td>
	 
      <td width="98"><div align="center" class="style21 style3 style14"><strong>Subdate</strong></div></td>
	    <td width="127"><div align="center" class="style21 style3 style14"><strong>Specialist</strong></div></td>
      <td width="137"><div align="center" class="style21 style3 style14"><strong>Blood Pressure</strong></div></td>
	   <td width="180"><div align="center" class="style21 style3 style14"><strong>Temperature</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="875" border="1"  align=center>

    <% int index=0;
	try
	{  
       
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phrs";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();Statement smt = con.createStatement();
            Statement smt1 = con.createStatement();
            Statement smt2 = con.createStatement();
            Statement smt3 = con.createStatement();
            Statement smt4 = con.createStatement();
            Statement smt5 = con.createStatement();
            Statement smt6 = con.createStatement();
            Statement smt7 = con.createStatement();
            Statement smt8 = con.createStatement();
            Statement smt9 = con.createStatement();
              String f11="",f12="";
               String r1="",r2="",r3="",r4="",r5="";
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
 f12=sdf1.format(date);
   int vv=0,vv1=0,flag=0,f=0;
   
                   
		ResultSet rs = st.executeQuery("select * from etest where uid='"+so.getAttribute("un")+"'");
		if(rs!=null)
			{ 
                            
    %>
   
    <% while(rs.next())
		{
                            
                         
                        
          

          
                                
                            					
	 %>
	
    <tr>
      <td width="59" height="29" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
               <td width="99"><div align="center"><%=rs.getString(5)%></div></td>
               <td width="133"><div align="center"><%=rs.getString(6)%></div></td>
        <td width="93"><div align="center"><%=rs.getString(7)%></div></td>
      <td width="128"><div align="center"><%=rs.getString(8)%></div></td>
	         <td width="137"><div align="center"><%=rs.getString(9)%></div></td>
      <td width="180"><div align="center"><%=rs.getString(10)%></div></td>
	 
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

