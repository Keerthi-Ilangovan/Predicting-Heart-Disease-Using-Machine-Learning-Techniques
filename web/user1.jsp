<%-- 
    Document   : user1
    Created on : Mar 12, 2022, 9:27:59 AM
    Author     : windows
--%>

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
.style19 {color: #FFFFFF}
.style21 {font-size: 14}
.style22 {font-size: 14px}
.style23 {font-size: 12px}
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
      <tr>
        <td height="282">
          <table align="center" width="881" height="256" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="877"  align="center">&nbsp;</td>
          </tr>
    
                      <tr>
                        <td align="center"><table width="917" border="0" align="center">
                      <tr>
                        <td width="911"></Br>
  <table width="919" border="0">
    <tr>
      <td width="909" height="35" align="center" bgcolor="#006633"><span class="style29 style22 style19">NORMAL TEST DETAILS REPORT </span> </td>
    </tr>
    <tr>
      <td><table width="998" border="1" align="center">
        <tr>
          <td width="56" class="style14 style25 style23"><span class="style14 style27 style21">
            <div align="center">Gender</div></td>
                  
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Age</div></td>
                    
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Smoking</div></td>
                   
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">weight</div></td>
                     
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Alcohol Intake</div></td>
                 
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">High Salt Diet</div></td>
                   
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">High Saturated fat diet</div></td>
                     
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Exercise</div></td>
                    
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Sedentary Lifestyle/ Inactivity</div></td>
                     
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Hereditary</div></td>
                   
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Bad Cholestrol</div></td>
                     
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Blood Pressure</div></td>
                    
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Blood Sugar</div></td>
                    
                    <td class="style14 style25 style23"><span class="style14 style27 style21">
                      <div align="center">Heart Rate</div></td>
					      <td class="style14 style25 style23"><span class="style14 style27 style21">
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
                        
		ResultSet rs = st.executeQuery("select * from verify where uid='"+so.getAttribute("un")+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
          <td width="56" >   
            
            <div align="center" class="style14 style27 style21">
            <%=rs.getString(3)%>               </td>
                 <td width="30"><div align="center" class="style14 style27 style21"><%=rs.getString(4)%></td>
                 <td width="68"><div align="center" class="style14 style27 style21"><%=rs.getString(5)%></td>
          <td width="51"><div align="center" class="style14 style27 style21"><%=rs.getString(6)%></td>
        <td width="62"><div align="center" class="style14 style27 style21"><%=rs.getString(7)%></td>
	           <td width="40"><div align="center" class="style14 style27 style21"><%=rs.getString(8)%></td>
        <td width="78"><div align="center" class="style14 style27 style21"><%=rs.getString(9)%></td>
	       <td width="66"><div align="center" class="style14 style27 style21"><%=rs.getString(10)%></td>
                 <td width="82"><div align="center" class="style14 style27 style21"><%=rs.getString(11)%></td>
          <td width="79"><div align="center" class="style14 style27 style21"><%=rs.getString(12)%></td>
        <td width="79"><div align="center" class="style14 style27 style21"><%=rs.getString(13)%></td>
	           <td width="69"><div align="center" class="style14 style27 style21"><%=rs.getString(14)%></td>
        <td width="50"><div align="center" class="style14 style27 style21"><%=rs.getString(15)%></td>
	     <td width="45"><div align="center" class="style14 style27 style21"><%=rs.getString(16)%></td>
	    <td width="49"><div align="center" class="style14 style27 style21"><%=rs.getString(17)%></td>
      </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
        </table></td>
    </tr>
  </table><BR></Br>
  <table width="1008" border="0">
    <tr>
      <td width="1002" height="28" align="center" bgcolor="#006633"><span class="style29 style22 style19">TEST DETAILS REPORT </span> </td>
    </tr>
    <tr>
      <td><table width="997" border="1" align="center">
        <tr>
          <td width="62"><div align="center" class="style14 style25 style23">(hr_la)</div></td>
                    
                    <td width="78"><div align="center" class="style14 style25 style23">(hba1c_1)</div></td>
                   
                    <td width="60"><div align="center" class="style14 style25 style23">(bun_1)</div></td>
                    
                    <td width="64"><div align="center" class="style14 style25 style23">(cho_1)</div></td>
                  
                    <td width="49"><div align="center" class="style14 style25 style23">(tri_1)</div></td>
                     
                    <td width="61"><div align="center" class="style14 style25 style23">(glu_1)</div></td>
                  
                    <td width="56"><div align="center" class="style14 style25 style23">(hdl_1)</div></td>
                     
                   
                      <td width="51"><div align="center" class="style14 style25 style23">(ldl_1)</div></td>
                    
                    <td width="69"><div align="center" class="style14 style25 style23">(pt_1)</div></td>
                
                    <td width="67"><div align="center" class="style14 style25 style23">(aptt_la)</div></td>
                     
                 
                      <td width="87"><div align="center" class="style14 style25 style23">(alb_1)</div></td>
                   
                  
                      <td width="89"><div align="center" class="style14 style25 style23">(ua_1)</div></td>
					  <td width="122"><div align="center" class="style14 style25 style23">Result</div></td>
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
                        
		ResultSet rs = st.executeQuery("select * from verify1 where uid='"+so.getAttribute("un")+"'");
		if(rs!=null)
	                  while(rs.next())
		{
                          
                            
    %>
          <td width="62" >   
            
            <div align="center" class="style14 style27 style21">
            <div align="center"><%=rs.getString(3)%>               </div></td>
                 <td width="78"><div align="center" class="style14 style27 style21">
                   <div align="center"><%=rs.getString(4)%></div></td>
                 <td width="60"><div align="center" class="style14 style27 style21">
                   <div align="center"><%=rs.getString(5)%></div></td>
          <td width="64"><div align="center" class="style14 style27 style21">
            <div align="center"><%=rs.getString(6)%></div></td>
        <td width="49"><div align="center" class="style14 style27 style21">
          <div align="center"><%=rs.getString(7)%></div></td>
	           <td width="61"><div align="center" class="style14 style27 style21">
	             <div align="center"><%=rs.getString(8)%></div></td>
        <td width="56"><div align="center" class="style14 style27 style21">
          <div align="center"><%=rs.getString(9)%></div></td>
	       <td width="51"><div align="center" class="style14 style27 style21">
	         <div align="center"><%=rs.getString(10)%></div></td>
                 <td width="69"><div align="center" class="style14 style27 style21">
                   <div align="center"><%=rs.getString(11)%></div></td>
          <td width="67"><div align="center" class="style14 style27 style21">
            <div align="center"><%=rs.getString(12)%></div></td>
        <td width="87"><div align="center" class="style14 style27 style21">
          <div align="center"><%=rs.getString(13)%></div></td>
	           <td width="89"><div align="center" class="style14 style27 style21">
	             <div align="center"><%=rs.getString(14)%></div></td>
			    <td width="122"><div align="center" class="style14 style27 style21">
			      <div align="center"><%=rs.getString(15)%></div></td>
                      </tr> <%  }
                                       
                          
													}catch(Exception ex){
                                                                                                      
                                                                                                        ex.printStackTrace();}
	%>
        </table></td>
    </tr>
  </table>
  
</td></tr>
            </table></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table>
          <p>&nbsp;</p></td>
      </tr>
         
    </table>
    
</form>
    </body>
</html>
