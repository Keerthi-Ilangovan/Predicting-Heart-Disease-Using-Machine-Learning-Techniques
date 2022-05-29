
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
        <title>JSP Page</title><link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
.style13 {
	color: #000000;
	font-weight: bold;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {color: #336633}
-->
        </style><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
    <body bgcolor="#CCCCCC"><form action="vtoken" method="post">
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
  <a href="doctor.jsp">Home</a>
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
                   <tr>
            <td height="335"><table width="781" border="0" align="center">
          <tr>
            <td width="775" height="37" align="center"><div align="center"><span class="style4 style18"> Token Confirmation </span></div></td>
          </tr>
          <tr>
            <td><table width="771" border="0">
              <tr>
                <td width="765"><table  align="center" width="596" height="10" border="0">
  <tr>
    <td width="599"><table width="744" height="43" border="3" >
   <tr>
      <td width="69" height="33" ><div align="center" class="style21 style3 style19"><strong>Select</strong></div></td>
      <td width="138"><div align="center" class="style21 style3 style19"><strong>User Id </strong></div></td>
      <td width="188"><div align="center" class="style21 style3 style19"><strong> Name </strong></div></td>
	  <td width="129"><div align="center" class="style21 style3 style19"><strong>Specialist</strong></div></td>
      <td width="182"><div align="center" class="style21 style3 style19"><strong>Subdate</strong></div></td>
    </tr>
	
	</table>
   </td>
  </tr>
</table></td>
              </tr>
              <tr>
                <td><table width="731" border="1"  align=center>

    <% int index=0;
	try
	{    Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
            String a11=null,a12="",a13="";
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;   

		String url="jdbc:mysql://localhost:3306/phrs";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                System.out.println("select * from token  where specialist=(Select specialist from doctor where uname='"+so.getAttribute("un")+"') and dat='"+dateNow+"'");
		ResultSet rs = st.executeQuery("select * from token  where specialist=(Select specialist from doctor where uname='"+so.getAttribute("un")+"') and dat='"+dateNow+"'");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{	
        a12=rs.getString(3);	
         System.out.println(a12);
          a13=rs.getString(6);	
           System.out.println(a13);
	 %>
	
    <tr>
      <td width="78" >   
        
              <div align="center">
                 <%=rs.getString(1)%>
               </div></td>
      <td width="135"><div align="center"><%=rs.getString(2)%></div></td>
      <td width="185"><div align="center"><%=a12%></div></td>
        <td width="127"><div align="center"><%=a13%></div></td>
      <td width="181"><div align="center"><%=rs.getString(10)%></div></td>
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
	
<%
String flag1=(String)request.getAttribute("ss1");
	String a1="";
	String a2="";
	String a3="";
	String a4="";
	String a5="";
	String a6="";	
	if(flag1!=null)
	{		
		a1=(String)request.getAttribute("a11");
		a2=(String)request.getAttribute("a12");
		a3=(String)request.getAttribute("a13");
			a4=(String)request.getAttribute("a14");

	}
 %>
  </table></td>
              </tr>
            </table>
            <p>&nbsp;</p>
              </td>
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
