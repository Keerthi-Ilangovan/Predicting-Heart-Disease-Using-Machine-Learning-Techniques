
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
.style13 {
	color: #000000;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #336633}
.style20 {color: #990000}
.style21 {font-weight: bold}
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
  <a href="user.jsp">Home</a>
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
</td>
      </tr>
      <tr>
        <td height="504" ><table width="958" height="450" border="0">
         
          <tr>
            <td height="409"><table width="916" border="0" align="center">
  <tr>
    <td width="910" height="28" align="center"><span class="style20 style23"><strong>Test Description</strong></span></td>
  </tr>
  <tr>
    <td height="110"><table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="877" height="43" border="3" >
   <tr>
      <td width="59" height="33" ><div align="center" class="style21 style3 style19"><strong>TId</strong></div></td>
      <td width="96"><div align="center" class="style21 style3 style19"><strong>User Id </strong></div></td>
      <td width="134"><div align="center" class="style21 style3 style19"><strong> Name </strong></div></td>
	  <td width="92"><div align="center" class="style21 style3 style19"><strong>Prescription</strong></div></td>
      <td width="107"><div align="center" class="style21 style3 style19"><strong>No of Tablet</strong></div></td>
	    <td width="144"><div align="center" class="style21 style3 style19"><strong>Morning</strong></div></td>
      <td width="195"><div align="center" class="style21 style3 style19"><strong>Afternoon</strong></div></td>
       <td width="144"><div align="center" class="style21 style3 style19"><strong>Evening</strong></div></td>
      <td width="195"><div align="center" class="style21 style3 style19"><strong>Night</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="875" border="1"  align=center>

    <% int index=0;
	try
	{   

            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;
		String url="jdbc:mysql://localhost:3306/phrs";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                System.out.println("select * from dpharmacy   where uname='"+so.getAttribute("un1")+"'");
		ResultSet rs = st.executeQuery("select * from dpharmacy  where uname='"+so.getAttribute("un1")+"'");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
	
    <tr>
      <td width="59" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
      <td width="99"><div align="center"><%=rs.getString(2)%></div></td>
      <td width="133"><div align="center"><%=rs.getString(3)%></div></td>
    <td width="102"><div align="center"><%=rs.getString(8)%></div></td>
      <td width="102"><div align="center"><%=rs.getString(9)%></div></td>
	         <td width="159"><div align="center"><%=rs.getString(10)%></div></td>
      <td width="184"><div align="center"><%=rs.getString(11)%></div></td>
        <td width="159"><div align="center"><%=rs.getString(12)%></div></td>
      <td width="184"><div align="center"><%=rs.getString(13)%></div></td>
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
	%><%
	String flag=(String)request.getAttribute("ss");
   String msg="";
		if(flag!=null)
	{
		msg=(String)request.getAttribute("msg");
		
	}
%>
	

  </table></td>
              </tr>
            </table></td>
  </tr>
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
