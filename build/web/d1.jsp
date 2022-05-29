<%-- 
    Document   : d1
    Created on : 18 Apr, 2020, 2:16:41 AM
    Author     : admin
--%>


<%@page import="java.util.Arrays"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="block.Block"%>
<%@ page language="java" import="block.Transaction"%>
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
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
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
.active {
  background-color: red;
  color: white;
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
.style14 {color: #000000}
.style22 {font-size: 12}
.style22 {font-size: 12px}
.style29 {color: #FFFFFF}
.style32 {color: #006633}
.style36 {color: #000000; font-size: 14; }
.style37 {
	font-size: 14px;
	font-weight: bold;
	color: #000000;
}
.style18 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="946" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="940"><table width="939" border="0">
          <tr>
            <td width="940"><table width="933" border="0">
              <tr>
                <td width="289"><img src="image/1_4.jpg" height="131"/></td>
                   <td width="634" align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></td>
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
        <td height="260" background="image/article5.png"><table width="940" border="0">
  <tr>
    <td width="355" height="248">&nbsp;</td>
    <td width="575"><p>&nbsp;</p>
      <p class="style29"><span class="style29"><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information</span>.</p>
      <br><br></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="923" height="404" border="0">
        
          <tr>
            <td width="917" height="366"><table width="917" border="0" align="center">
                      <tr>
                        <td width="911"><table align="center" width="297" height="83" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td height="111"><table width="297" height="95" border="0" cellpadding="1" cellspacing="1" align="center">
              
              	   
          <tr>
            <td width="139"><span class="style37">USER ID </span></td>
            <td width="267"><strong>
              <label></label>
              <label>
              <input type="text" name="a1" id="a1" class="displayValue" maxlength="10"  style="width:180px"  onChange="return val_zero('a1','err_a1');" 
											onblur="return val_mobile('a1','err_a1');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a1">  
              </label></td>
      
          </tr>
         
                     
          <tr>
            <td>&nbsp;</td>
            <td><strong>
              <label></label>
            </strong></td></tr>
              <tr>
                <td height="37"><span class="style22">&nbsp;</td>
                <td><strong>
                   <input type="submit" name="View" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  /> 
                  <input type="submit" name="Submit4" value="Cancel" id="label4" />
                </strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
                          <BR>
                          </Br><table width="919" border="0">
  <tr>
    <td width="909" height="35" align="center" bgcolor="#006633"><span class="style29">NORMAL TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="916" border="1" align="center">
                  <tr>
                    <td width="41" class="style22 style14"><span class="style22">
                      <div align="center">Gender</div></td>
                
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Age</div></td>
                  
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Smoking</div></td>
                 
                    <td class="style22 style14"><span class="style22">
                      <div align="center">weight</div></td>
                   
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Alcohol Intake</div></td>
               
                    <td class="style22 style14"><span class="style22">
                      <div align="center">High Salt Diet</div></td>
                 
                    <td class="style22 style14"><span class="style22">
                      <div align="center">High Saturated fat diet</div></td>
                   
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Exercise</div></td>
                  
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Sedentary Lifestyle/ Inactivity</div></td>
                   
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Hereditary</div></td>
                 
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Bad Cholestrol</div></td>
                   
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Blood Pressure</div></td>
                  
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Blood Sugar</div></td>
                  
                    <td class="style22 style14"><span class="style22">
                      <div align="center">Heart Rate</div></td>
					    <td class="style22 style14"><span class="style22">
					      <div align="center">Result</div></td>
                    </tr>
                  
  
	
    <tr><%
	try
	{  
       	  HttpSession so = request.getSession(true);
              String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                        
		ResultSet rs = st.executeQuery("select * from verify where uid='"+a11+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
      <td width="41" >   
        
              <div align="center" class="style22">
              <%=rs.getString(3)%>               </td>
               <td width="24"><div align="center" class="style22"><%=rs.getString(4)%></td>
               <td width="52"><div align="center" class="style22"><%=rs.getString(5)%></td>
        <td width="40"><div align="center" class="style22"><%=rs.getString(6)%></td>
      <td width="57"><div align="center" class="style22"><%=rs.getString(7)%></td>
	         <td width="43"><div align="center" class="style22"><%=rs.getString(8)%></td>
      <td width="80"><div align="center" class="style22"><%=rs.getString(9)%></td>
	     <td width="52"><div align="center" class="style22"><%=rs.getString(10)%></td>
               <td width="92"><div align="center" class="style22"><%=rs.getString(11)%></td>
        <td width="61"><div align="center" class="style22"><%=rs.getString(12)%></td>
      <td width="67"><div align="center" class="style22"><%=rs.getString(13)%></td>
	         <td width="65"><div align="center" class="style22"><%=rs.getString(14)%></td>
      <td width="47"><div align="center" class="style22"><%=rs.getString(15)%></td>
	   <td width="43"><div align="center" class="style22"><%=rs.getString(16)%></td>
	  <td width="58"><div align="center" class="style22"><%=rs.getString(17)%></td>
    </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
    </table></td>
  </tr>
</table><BR></Br>
<table width="921" border="0">
  <tr>
     <td width="909" height="28" align="center" bgcolor="#006633"><span class="style29">TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="912" border="1" align="center">
                  <tr>
                    <td width="75"><div align="center" class="style14"><span class="style22">(hr_la)</span></div></td>
                  
                    <td width="82"><div align="center" class="style14"><span class="style22">(hba1c_1)</span></div></td>
                 
                    <td width="63"><div align="center" class="style14"><span class="style22">(bun_1)</span></div></td>
                  
                    <td width="70"><div align="center" class="style14"><span class="style22">(cho_1)</span></div></td>
                
                    <td width="54"><div align="center" class="style14"><span class="style22">(tri_1)</span></div></td>
                   
                    <td width="69"><div align="center" class="style14"><span class="style22">(glu_1)</span></div></td>
                
                    <td width="61"><div align="center" class="style14"><span class="style22">(hdl_1)</span></div></td>
                   
                   
                    <td width="56"><div align="center" class="style14"><span class="style22">(ldl_1)</span></div></td>
                  
                    <td width="92"><div align="center" class="style14"><span class="style22">(pt_1)</span></div></td>
              
                    <td width="72"><div align="center" class="style14"><span class="style22">(aptt_la)</span></div></td>
                   
                 
                    <td width="75"><div align="center" class="style14"><span class="style22">(alb_1)</span></div></td>
                 
                  
                    <td width="82"><div align="center" class="style14"><span class="style22">(ua_1)</span></div></td>
					<td width="82"><div align="center" class="style14"><span class="style22">Result</span></div></td>
                    </tr>
                    <tr><%
	try
	{  
       	  HttpSession so = request.getSession(true);
              String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/covid";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                        
		ResultSet rs = st.executeQuery("select * from verify1 where uid='"+a11+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
      <td width="75" >   
        
              <div align="center" class="style22">
              <div align="center"><%=rs.getString(3)%>               </div></td>
               <td width="82"><div align="center" class="style22">
                 <div align="center"><%=rs.getString(4)%></div></td>
               <td width="63"><div align="center" class="style22">
                 <div align="center"><%=rs.getString(5)%></div></td>
        <td width="70"><div align="center" class="style22">
          <div align="center"><%=rs.getString(6)%></div></td>
      <td width="54"><div align="center" class="style22">
        <div align="center"><%=rs.getString(7)%></div></td>
	         <td width="69"><div align="center" class="style22">
	           <div align="center"><%=rs.getString(8)%></div></td>
      <td width="61"><div align="center" class="style22">
        <div align="center"><%=rs.getString(9)%></div></td>
	     <td width="56"><div align="center" class="style22">
	       <div align="center"><%=rs.getString(10)%></div></td>
               <td width="92"><div align="center" class="style22">
                 <div align="center"><%=rs.getString(11)%></div></td>
        <td width="72"><div align="center" class="style22">
          <div align="center"><%=rs.getString(12)%></div></td>
      <td width="75"><div align="center" class="style22">
        <div align="center"><%=rs.getString(13)%></div></td>
	         <td width="82"><div align="center" class="style22">
	           <div align="center"><%=rs.getString(14)%></div></td>
			  <td width="82"><div align="center" class="style22">
			    <div align="center"><%=rs.getString(15)%></div></td>
                    </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
                </table></td>
  </tr>
</table>
</td>
              </tr>
            </table></td>
          </tr>
                      <tr>
                        <td></td>
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
