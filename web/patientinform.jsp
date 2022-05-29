
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
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</style> <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style21 {color: #000000}
.style22 {color: #FFFFFF}
.style25 {font-size: 12px}
.style18 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="966"><table width="960" border="0">
          <tr>
            <td width="954"><table width="957" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="655" align="center"><span class="style18">HEART DISEASE PREDICTION SYSTEM </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
           <td><div class="navbar">
  <a href="admin.jsp" >Home</a>
 <a href="patientinform.jsp"  class="active">Patient Details</a>
 <a href="dregister.jsp">Doctor Register</a>
 <a href="login.jsp">Log_Out</a>
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
</td>
      </tr>
      <tr>
        <td height="31" ><table width="953" border="0">
                      <tr>
                        <td width="947" align="center"><table align="center" width="881" height="256" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="877"  align="center">&nbsp;</td>
          </tr>
    
                      <tr>
                        <td align="center"><table width="917" border="0" align="center">
                      <tr>
                        <td width="911"><table align="center" width="500" height="83" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="496" height="111"><table width="475" height="103" border="0" cellpadding="1" cellspacing="1" align="center">
              
              	   
          <tr>
            <td width="189" height="36"><span class="style37 style21">USER ID </span></td>
            <td width="279"><strong>
              <label>
              <input type="text" name="a1" id="a1" class="displayValue" maxlength="10"  style="width:180px"  onChange="return val_zero('a1','err_a1');" onBlur="return val_mobile('a1','err_a1');" />
                &nbsp;&nbsp;&nbsp;<span id="err_a1">  
              </label></td>
      
          </tr>
         
                     
          <tr>
            <td>&nbsp;</td>
            <td><strong>
              <label></label>
            </strong></td></tr>
              <tr>
                <td height="37"><span class="style14 style27 style21">&nbsp;</td>
                <td><strong>
                   <input type="submit" name="View" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  /> 
                  <input type="submit" name="Submit4" value="Cancel" id="label4" />
                </strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
                          </Br>
<table width="919" border="0">
  <tr>
    <td width="909" height="35" align="center" bgcolor="#006633"><span class="style29 style22">NORMAL TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="998" border="1" align="center">
                  <tr>
                    <td width="56" class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Gender</div></td>
                
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Age</div></td>
                  
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Smoking</div></td>
                 
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">weight</div></td>
                   
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Alcohol Intake</div></td>
               
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">High Salt Diet</div></td>
                 
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">High Saturated fat diet</div></td>
                   
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Exercise</div></td>
                  
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Sedentary Lifestyle/ Inactivity</div></td>
                   
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Hereditary</div></td>
                 
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Bad Cholestrol</div></td>
                   
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Blood Pressure</div></td>
                  
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Blood Sugar</div></td>
                  
                    <td class="style14 style21 style25"><span class="style14 style27 style21">
                      <div align="center">Heart Rate</div></td>
					    <td class="style14 style21 style25"><span class="style14 style27 style21">
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
     <td width="1002" height="28" align="center" bgcolor="#006633"><span class="style29 style22">TEST DETAILS REPORT </span> </td>
  </tr>
  <tr>
    <td><table width="997" border="1" align="center">
                  <tr>
                    <td width="62"><div align="center" class="style14 style21 style25">(hr_la)</div></td>
                  
                    <td width="78"><div align="center" class="style14 style21 style25">(hba1c_1)</div></td>
                 
                    <td width="60"><div align="center" class="style14 style21 style25">(bun_1)</div></td>
                  
                    <td width="64"><div align="center" class="style14 style21 style25">(cho_1)</div></td>
                
                    <td width="49"><div align="center" class="style14 style21 style25">(tri_1)</div></td>
                   
                    <td width="61"><div align="center" class="style14 style21 style25">(glu_1)</div></td>
                
                    <td width="56"><div align="center" class="style14 style21 style25">(hdl_1)</div></td>
                   
                   
                    <td width="51"><div align="center" class="style14 style21 style25">(ldl_1)</div></td>
                  
                    <td width="69"><div align="center" class="style14 style21 style25">(pt_1)</div></td>
              
                    <td width="67"><div align="center" class="style14 style21 style25">(aptt_la)</div></td>
                   
                 
                    <td width="87"><div align="center" class="style14 style21 style25">(alb_1)</div></td>
                 
                  
                    <td width="89"><div align="center" class="style14 style21 style25">(ua_1)</div></td>
					<td width="122"><div align="center" class="style14 style21 style25">Result</div></td>
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
</td>
              </tr>
            </table></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table></td>
                      </tr>
                      <tr>
                        <td></td>
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
