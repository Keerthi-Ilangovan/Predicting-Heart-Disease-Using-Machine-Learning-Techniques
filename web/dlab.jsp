
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
  <script language="JavaScript" src="js/security.js"></script><link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<link rel="stylesheet" type="text/css" href="style.css" />
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
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
.style19 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="dlab" method="post" ><%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    a=(String)request.getAttribute("a");
   b=(String)request.getAttribute("b");
     }
    %>
    <%
String flag1=(String)request.getAttribute("ss1");
	 String s1 = "";
		String s2 = "";
		String s3 = "";
                                         
 String s4 = "";
		String s5 = "";
		String s6 = "";                         
		String s7 = "";    
String s8 = "";
		String s9 = "";                         
		String s10 = "";
String s11 = "";
	if(flag1!=null)
	{		
		s1=(String)request.getAttribute("a1");
		s2=(String)request.getAttribute("a2");
		s3=(String)request.getAttribute("a3");
		s4=(String)request.getAttribute("a4");
		s5=(String)request.getAttribute("a5");
		s6=(String)request.getAttribute("a6");
        		s7=(String)request.getAttribute("a7");
                  
	s8=(String)request.getAttribute("a8");
		s9=(String)request.getAttribute("a9");
		s10=(String)request.getAttribute("a10");
        		s11=(String)request.getAttribute("a11");

	}
 %>
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648" align="center"><span class="style19">HEART DISEASE PREDICTION SYSTEM </span></td>
              </tr>
            </table></td>
          </tr>
         <tr>
            <td height="75"><div class="navbar">
  <a href="doctor.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Patient Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="custinform.jsp">Patient Information</a>
      <a href="testinform.jsp">Test Information Details</a>
      
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn">Patient Prescription<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="doctortestprescribe.jsp">Test</a>
      <a href="pharmacy.jsp">Pharmacy</a>
	  <a href="denter.jsp">Enter Test</a>
	   <a href="dtest.jsp">Booked Conform</a>
    </div>
  </div> 
 
  <a href="dlab.jsp">Lab Result</a>
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
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="568" border="0">
          <tr>
            <td width="558">&nbsp;</td>
          </tr>
          <tr>
            <td><table width="634" border="0" align="center">
                    <tr>
                      <td width="628" height="32"><div align="center" class="style2"><strong>Add Pharmacy Detail </strong></div></td>
                    </tr>
                    <tr>
                      <td height="220"><table width="594" border="0" align="center">
		     <tr>
              <td width="162" height="34"><span class="style6"><strong>Lab Image </strong></span></td>	
               <%
 int pro=0;
 int pro1=0;
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select max(pid) from pharmacy");
  %>  <%

          if (rs!=null) {  while(rs.next()){
				pro=Integer.parseInt(rs.getString(1));
				pro1=pro+1;
					s1=pro1+"";
                                                                               }
				}else{
				pro1=1000;
				s1=pro1+"";
				}
           %>
              <td width="307"><label>
                      <input type="file" name="a1" id="a1" value="<%=s1%>">
              </label></td><td>&nbsp;&nbsp;<input type="submit" name="search" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  />  </td><%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>            </tr>
            <tr>
              <td width="162" height="30"><span class="style6"><strong>Disease</strong></span></td>
              <td width="307"><label>
                <input name="a2" type="text" id="a2" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');" value="<%=s2%>"/>
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>


            <tr>
              <td height="59"><span class="style6"><strong>Disease Describtion</strong></span></td>
              <td><label>
              <textarea name="a3" id="a3" cols="45" rows="5"><%=s3%></textarea>
&nbsp;&nbsp;<span id="err_a3"></span>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td height="32">Treatment Detail</td>
              <td><label>
              <textarea name="a4" id="a4" cols="45" rows="5"><%=s4%></textarea>
&nbsp;&nbsp;&nbsp;<span id="err_a4"></span>  
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
             <tr>
              <td>Medicine Detail</td>
              <td><label>
                <textarea name="a5" id="a5" cols="45" rows="5"><%=s5%></textarea>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>Patient Name</td>
              <td><label>
                      <input type="text" name="a6" id="a6" value="<%=s6%>">
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
             <tr>
              <td>Age</td>
              <td><label>
                      <input type="text" name="a7" id="a7" value="<%=s7%>">
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>Duration</td>
              <td><label>
                      <input type="text" name="a8" id="a8" value="<%=s8%>">
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>Summary</td>
              <td><label>
              <textarea name="a9" id="a9" cols="45" rows="5"><%=s9%></textarea>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>Appointment </td>
              <td><input type="text" name="a10" id="a10" value="<%=s10%>"></td><td>&nbsp;&nbsp;  </td>
            </tr>
                <tr>
              <td>Patient Image</td>
              <td><label>
                      <input type="file" name="a11" id="a11" value="<%=s11%>">
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
                <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td><td><%=msg%> </td>
            </tr>
          <tr>
                      <td class="style2">&nbsp;&nbsp;                                          </td>
                      <td class="style2">&nbsp;&nbsp;  &nbsp;&nbsp;
                        <input type="submit" name="Add" value="Add Details"   /></td>
                      <td width="111" class="style2"><label></label></td>
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
