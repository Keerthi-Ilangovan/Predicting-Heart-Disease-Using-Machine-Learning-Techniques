
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
        <title>JSP Page</title><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        </style>><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />

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
  <a href="nurse.jsp" class="active">Home</a>
  <a href="vtoken.jsp">Appointments</a>
  <a href="login.jsp">Log_out</a>
   
   
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
        <td height="378" ><table width="958" height="376" border="0">
                   <tr><%
HttpSession so = request.getSession(true);int index=0;
	try
	{  
            
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");

 String f12=sdf1.format(date);
	  

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phrs";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                int vv=0,flag=1;
                  ResultSet rs = st.executeQuery("select * from doctor where did='"+so.getAttribute("un")+"'");
		if(rs.next())
			{ 
                    ResultSet rs2 = st1.executeQuery("select COUNT(distinct patientid)  from searchblock where doctorid='"+so.getAttribute("un") +"' and specialist='" +rs.getString(6) + "' and fdate='"+f12+"' ");
				
                                    if (rs2.next()) {
                              vv=Integer.parseInt(rs2.getString(1));
                                    }
      
%>
            <td height="335"><p class="style34">Welcome <%=rs.getString(2)%></p>
          <table width="597" border="1" bordercolor="#000000" align="center">  
            <% %>
          <tr>
            <td width="212" height="39"><div align="right" class="style14"><span class="style33">Nurse ID : </span></div></td>
            <td width="28">&nbsp;</td>
            <td width="335"><span class="style33"><%=rs.getString(1)%></span></td>
          </tr>
          <tr>
            <td height="39"><div align="right" class="style14"><span class="style33">Nurse Name : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(2)%></span></td>
          </tr>
          <tr>
            <td height="37"><div align="right" class="style14"><span class="style33">Date of Birth : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(4)%></span></td>
          </tr>
          <tr>
            <td height="29"><div align="right" class="style14"><span class="style33">Age : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(3)%></span></td>
          </tr>
          <tr>
            <td height="43"><div align="right" class="style14"><span class="style33">Specialist :</span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(6)%></span></td>
          </tr>
		  <tr>
            <td height="50"><div align="right" class="style14"><span class="style33">Experience : </span></div></td>
            <td>&nbsp;</td>
            <td><span class="style33"><%=rs.getString(7)%></span></td>
          </tr>
		<%}}
	catch (Exception e) {
		out.println(e);
	}%>
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
