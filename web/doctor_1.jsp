
<%@page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

.dropdown-content a:hover {
  background-color: #ddd;
}
.active {
  background-color: red;
  color: white;
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
	font-size: 16px;
	font-style: italic;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style35 {font-size: 16px}
.style36 {color: #000000}
.style37 {font-size: 16px; color: #000000; }
.style38 {color: #FF0000}
.style40 {color: #000000; font-size: 18px; }
.style43 {font-size: 24px}
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
            <td height="75"><div class="navbar">
  <a href="doctor.jsp" class="active">Home</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="custinform.jsp">Prescription Information</a>
      <a href="testinform.jsp">Test Information Details</a>
	   <a href="d1.jsp">Diagnosis Details</a>
      <a href="dtest.jsp">Booked Conform</a>
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Doctor Report<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="doctortestprescribe.jsp">Test</a>
      <a href="pharmacy.jsp">Prescription</a>
	  <a href="denter.jsp">Diagnosis</a>
	   
    </div>
  </div> 
 

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
          <p>&nbsp;</p></td>
  </tr>
</table>
</td><%        Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");

 String f12=sdf1.format(date);
HttpSession so = request.getSession(true);int index=0;
	try
	{  
            
          
	  

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
                                    }else{
                                        vv=0;
                                    }
      
%>
      </tr>
      <tr><table width="200" border="1">
  <tr>
    <td align="center">Welcome to Doctors Page</td>
  </tr>
</table>

        <td height="282">
		<table width="944" border="0">
		  <tr>
    <td width="700" height="33">Welcome <%=rs.getString(2)%></td>
    <td width="244" align="center"><span class="style40">No of Visitors</span></td>
  </tr>
 
  <tr>
    <td height="32">&nbsp;</td>
    <td align="center"><span class="style43"><span class="style38"><%=vv%></span></span></td>
  </tr>
</table>
<table width="956" border="0">
 
  <tr>
    <td><table width="622" border="1" align="center"> 
            <% %>
          <tr>
            <td width="263" height="39"><div align="right" class="style35"><span class="style36">Doctor ID : </span></div></td>
            <td width="22" ><span class="style35"></span></td>
            <td width="323"><span class="style37"><%=rs.getString(1)%></span></td>
          </tr>
          <tr>
            <td height="39"><div align="right" class="style35"><span class="style36">Doctor Name : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=rs.getString(2)%></span></td>
          </tr>
          <tr>
            <td height="37"><div align="right" class="style35"><span class="style36">Date of Birth : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=rs.getString(4)%></span></td>
          </tr>
          <tr>
            <td height="29"><div align="right" class="style35"><span class="style36">Age : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=rs.getString(3)%></span></td>
          </tr>
          <tr>
            <td height="43"><div align="right" class="style35"><span class="style36">Specialist :</span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=rs.getString(6)%></span></td>
          </tr>
		  <tr>
            <td height="50"><div align="right" class="style35"><span class="style36">Experience : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=rs.getString(7)%></span></td>
          </tr>
		   <tr>
            <td height="50"><div align="right" class="style35"><span class="style36">Date : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=f12%></span></td>
          </tr>
		   <tr>
            <td height="50"><div align="right" class="style35"><span class="style36">No of Visitors : </span></div></td>
            <td><span class="style35"></span></td>
            <td><span class="style37"><%=vv%></span></td>
          </tr>
		<%}}
	catch (Exception e) {
		out.println(e);
	}%>
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
