
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
.style10 {color: #FFFFFF; font-weight: bold; font-size: 18px; }
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
<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript">
<!--
function calculateAge(inputFieldId, outputFieldId, alert_18){

var age;

var input = document.getElementById(inputFieldId).value;

// Past date info

var pyear = parseInt(input.substring(6,10));
var pmonth = parseInt(input.substring(3,5)) - 1;
var pday = parseInt(input.substring(0,2));

// Today info
today = new Date();
year = today.getFullYear() ;
month = today.getMonth();
day = today.getDate();

if ( month < pmonth ){
age = year - pyear - 1;
}
else if ( month > pmonth ){
age = year - pyear;
}
else if ( month == pmonth ){
if ( day < pday ){
age = year - pyear - 1;
}
else if ( day > pday ){
age = year - pyear;
}
else if ( day == pday ){
age = year - pyear;
}
}
document.getElementById(outputFieldId).value = age;



}
//-->
</script>
        <style type="text/css">
<!--
.style22 {font-size: 14px}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC">
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
  <a href="admin.jsp">Home</a>
 <a href="patientinform.jsp">Patient Details</a>
 <a href="dregister.jsp"   class="active">Doctor Register</a>
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
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="31" ><table width="953" height="480" border="0">
          <tr>
            <td width="162">&nbsp;</td>
            <td width="593" align="center"><table width="580" border="0">
              <tr>
                <td width="574">
                  <p align="center" class="style1 style14"><strong>DOCTOR REGISTRATION FORM </strong></p>
                </td>
              </tr>
              <tr>
                <td><form action="doctor" method="post">
				<%
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

	if(flag1!=null)
	{		
		s1=(String)request.getAttribute("s1");
		s2=(String)request.getAttribute("s2");
		s3=(String)request.getAttribute("s3");
		s4=(String)request.getAttribute("s4");
		s5=(String)request.getAttribute("s5");
		s6=(String)request.getAttribute("s6");
        		s7=(String)request.getAttribute("s7");
                  s8=(String)request.getAttribute("s8");
	

	}
 %>
 
          <table width="563" border="0" align="center"> <%
 int pro=0;
 int pro1=0;
  String pro2="";
  String[] a11=new String[4];
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select mid(did,4,4) from doctor WHERE did LIKE 'DID%'");
  %>  <%

          if (rs!=null) {  while(rs.next()){
		
				pro=Integer.parseInt(rs.getString(1));
				pro1=pro+1;
					s1="DID"+pro1;
                                                                               }
				}else{
				pro1=1000;
				s1="DID"+pro1;
				}
           %>
		     <tr>
              <td width="175" height="39"><span class="style14 style22">Doctor ID </span></td>
              <td width="279"><label>
                <div align="left">
                  <input name="a1" type="text" value="<%=s1%>" size="30" maxlength="15"  />
                  </div>
              </label></td><td>&nbsp;&nbsp;<input type="submit" name="search" value="SEARCH" />  </td>
            </tr>
            <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>          
            <tr>
              <td width="175" height="35"><span class="style14 style22">Doctor Name</span></td>
              <td width="279"><label>
               <div align="left">
  <input name="a2" type="text" id="a2" class="displayValue"  value="<%=s2%>" maxlength="15" size="30" onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>                </div>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
			 <tr>
            <td height="45"><span class="style14 style22">Date of Birth *</span></td>
            <td><label>
                    <div align="left">
                      <input type="text" size="30" id="birthdate" name="birthdate" class="displayValue"  readonly="true" onChange="return val_zero('birthdate','err_birthdate');" 
 onblur="calculateAge('birthdate','age','true')"/>  
                      <a href="javascript:NewCssCal('birthdate','ddmmyyyy')"><img src="image/cal.jpg" alt="" width="25" height="21" /></a>
                               <span id="err_birthdate"></span>                            </div>
            </label></td><td>&nbsp;&nbsp;  </td>
          </tr>
		    <tr>
            <td height="39"><span class="style14 style22">Age*</span></td>
            <td><label>
                    <div align="left">
                      <input name="age" type="text"  id="age" size="30" maxlength="3"  readonly="true" >
                          </div>
            </label></td><td>&nbsp;&nbsp;  </td>
          </tr>
          


            <tr>
              <td height="93"><span class="style14 style22">Address</span></td>
              <td><label>
              <div align="left">
  <textarea name="a5" rows="3" class="displayValue" id="a5" style="width:180px"  onBlur="return txt_empty('a5','err_a5','Address Should Not Be Blank');" onChange="return val_zero('a5','err_a5');"><%=s5%></textarea>
  &nbsp;&nbsp;<span id="err_a5"></span>              </div>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td height="32"><span class="style14 style22">Hospital</span></td>
              <td><label>
                 <div align="left">
  <input name="a6" type="text" id="a6" class="displayValue"  value="<%=s6%>" maxlength="15" size="30"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a6','err_a6');"     onblur="return txt_empty('a6','err_a6','Name Should Not Be Blank');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a6">                    </div>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td height="31"><span class="style14 style22">No of Beds </span></td>
              <td><label>
                <div align="left">
  <input type="text" name="a7" id="a7" class="displayValue" maxlength="10"  size="30"onKeyPress="return numbersonly();" onChange="return val_zero('a7','err_a7');" value="<%=s7%>"
											onblur="return val_mobile('a7','err_a7');" />
  &nbsp;&nbsp;&nbsp;<span id="err_a7"></span>                  </div>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
              <tr>
              <td><span class="style22"></span></td>
              <td>&nbsp;</td><td>&nbsp;&nbsp;  </td>
            </tr>
          <tr>
                      <td class="style2">                                                                 </td>
                      <td class="style2"><input type="submit" name="add" value="Add Details" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="delete" value="DELETE" />                         </td>
                      <td width="95" class="style2"><label>  <input type="reset" name="cancel" value="CANCEL" />
                </label></td>
              </tr>
          </table>
         <p align="center"> <%=msg%></p>
        </form>
          </td>
              </tr>
            </table></td>
            <td width="184">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    

    </body>
</html>
