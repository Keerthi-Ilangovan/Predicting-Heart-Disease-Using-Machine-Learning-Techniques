
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script><script type="text/javascript" src="js/datetimepicker_css.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style14 {color: #000000}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style22 {color: #000000; font-size: 14; font-weight: bold; }
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="testprescribed" method="post">
<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
     String s4 = ""; 
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

                          
                   s4=(String)request.getAttribute("s4");   
     }
    %>
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
      <a href="doctortestprescribe.jsp" class="active">Test</a>
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
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="946" height="437" border="0">  
          <%
String flag1=(String)request.getAttribute("ss1");
	 String s1 = "";
		String s2 = "";
		String s3 = "";
              



	if(flag1!=null)
	{		
		s1=(String)request.getAttribute("s1");
		s2=(String)request.getAttribute("s2");
		s3=(String)request.getAttribute("s3");
		s4=(String)request.getAttribute("s4");             
	

	}
 %>
          <tr>
            <td width="940" height="23">&nbsp;</td>
          </tr>
          <tr>
            <td height="407"><table width="924" height="427" border="0">
              <tr>
                <td width="83" height="421">&nbsp;</td>
                <td width="766" ><table width="648" border="0" align="center">
                  <tr>
                    <td width="642" height="32" ALIGN="CENTER"><strong>DOCTOR TEST DETAILS</strong></td>
                  </tr>
                  <tr>
                    <td><table width="553" border="0" align="center">
                         <td width="192"><span class="style22">Token ID *</span></td>
                        <td width="223"><label>
                              <input type="text" id="a1" name="a1" maxlength="15"class="displayValue" style="width:180px"  onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" 
											onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=s1%>" />
										&nbsp;&nbsp;&nbsp;
				<span id="err_a1"></span>  
                        </label></td>
                        <td width="124"><label>
                          <input type="submit" name="search" value="SEARCH" >
                        </label></td>
                      </tr>
					    <tr>
                        <td><span class="style22">User ID  *</span></td>
                        <td><label>
                            <input name="a2" type="text" id="a2" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');" value="<%=s2%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>    
                        </label></td>
                        <td><label></label></td>
                      </tr>
                      <tr>
                        <td><span class="style22">Name *</span></td>
                        <td><label>
                            <input name="a3" type="text" id="a3" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a3','err_a3');"     onblur="return txt_empty('a3','err_a3','Name Should Not Be Blank');" value="<%=s3%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a3"></span>    
                        </label></td>
                        <td><label></label></td>
                      </tr>
                      <tr>
                        <td><span class="style22">Specialist *</span></td>
                        <td><label>
                        <input name="a4" type="text" id="a4" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a4','err_a4');"     onblur="return txt_empty('a4','err_a4','Name Should Not Be Blank');" value="<%=s4%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a4"></span> 
                        </label></td>
                        <td><label></label></td>
                      </tr><tbody>
                      <tr>
                      <tr>
                        <td><span class="style22">Date *</span></td>
                        <td><label>
                          <input type="text" id="a5" name="a5" onChange="return val_zero('a4','err_a4');" style="width:180px"  readonly="true" onBlur="return txt_empty('a5','err_a5','Should Not Be Blank');">
                           
                          <a href="javascript:NewCssCal('a5','yyyymmdd')"><img src="image/cal.jpg" alt="" width="20" height="20"></a><span id="err_a4"> </span></label></td>
                        <td> </td>
                      </tr>
                      <tr>
                        <td><span class="style22">Test Type Prescribed *</span></td>
                       <%

  String pro1=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select *  from test  ");
  %> 
                        <td><label>
            <select name="a6" value="" style="width:180px" >
			 <%
          while (rs1.next()) {
				pro1=rs1.getString(2);
           %>
              <option><%=pro1%></option><%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
                        <td><label></label></td>
                      </tr>
                      <tr>
                        <td><span class="style14"><strong> </strong></span></td>
                        <td> </td>
                        <td><label></label></td>
                      </tr>
                      <tr>
                        <td><span class="style14"></span></td>
                        <td>&nbsp;</td>
                        <td><label></label></td>
                      </tr>
                      <tr>
                        <td height="31"> </td>
                        <td><input type="submit" name="add" value="Save" class="buttons" onClick="return validatePage('a1|a2|a3|a4','err_a1|err_a2|err_a3|err_a4','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;<input type="reset" name="cancel" value="Cancel" /> </td>
                        <td> </td>
                      </tr>
                    </tbody>
                  </table></td>
                  </tr>
                </table>
                  <br><%=msg%>
                  
                  </td>
                <td width="61">&nbsp;</td>
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
