
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
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
	font-size: 18px;
	font-style: italic;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {font-size: 14px}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="test" method="post">
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


	if(flag1!=null)
	{		
		s1=(String)request.getAttribute("s1");
		s2=(String)request.getAttribute("s2");
		s3=(String)request.getAttribute("s3");
		s4=(String)request.getAttribute("s4");
		s5=(String)request.getAttribute("s5");
		s6=(String)request.getAttribute("s6");
        		s7=(String)request.getAttribute("s7");
                  
	

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
            <td><div class="navbar">
  <a href="admin.jsp" >Home</a>
 <a href="patientinform.jsp">Patient Details</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Master Screen 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="pharmacydescribtion.jsp">Add Pharmacy Information</a>
     <a href="testprescribed.jsp" class="active">Add Test Information</a>
   
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Registration<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="dregister.jsp">Doctor Register</a>
      <a href="lregister.jsp">Worker Register</a>
   
    </div>
	
  </div>   <div class="dropdown">
    <button class="dropbtn" input type="hidden">History</button>
    <div class="dropdown-content">
      <a href="block1.jsp">Login Block</a>
      <a href="block2.jsp">Test Block</a>
      <a href="historyblock.jsp">History Block</a>
    </div>
	
  </div><a href="login.jsp">Log_out</a>
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
        <td height="31" ><table width="959" height="482" border="0">
         
          <tr>
            <td><table width="634" border="0" align="center">
                    <tr>
                      <td width="628" height="32"><div align="center" class="style2 style19"><strong>Add Test Details </strong></div></td>
                    </tr>
                    <tr>
                      <td height="272" align="center"><table width="507" border="0" align="center">
		     <tr>
              <td width="117" height="34"><span class="style6 style19"><strong>Test ID </strong></span></td>	
               <%
 int pro=0;
 int pro1=0;
  String pro2="";
  String[] a11=new String[4];
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select max(tid) from test");
  %>  <%

          if (rs!=null) {  while(rs.next()){
		  pro2=rs.getString(1);
		  a11=pro2.split("TID");
				pro=Integer.parseInt(a11[1]);
				pro1=pro+1;
					s1="TID"+pro1;
                                                                               }
				}else{
				pro1=1000;
				s1="TID"+pro1;
				}
           %>
              <td width="238"><label>
                <input type="text" name="a1" id="a1" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a1','err_a1');" 
											onblur="return val_mobile('a1','err_a1');" value="<%=s1%>"/>
                &nbsp;&nbsp;&nbsp;<span id="err_a1"></span>  
              </label></td><td>&nbsp;&nbsp;<input type="submit" name="search" value="Search" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  />  </td><%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>            </tr>
            <tr>
              <td width="117" height="30"><span class="style6 style19"><strong>Test Name</strong></span></td>
              <td width="238"><label>
                <input name="a2" type="text" id="a2" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');" value="<%=s2%>"/>
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>


            <tr>
              <td height="59"><span class="style6 style19"><strong>Description</strong></span></td>
              <td><label>
                 <textarea name="a3" rows="3" class="displayValue" id="a3" style="width:180px"  onBlur="return txt_empty('a3','err_a3','Address Should Not Be Blank');" onChange="return val_zero('a3','err_a3');"><%=s3%></textarea>
  &nbsp;&nbsp;<span id="err_a3"></span>
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td height="32"><span class="style6 style19"><strong>Amount</strong></span></td>
              <td><label>
                  <input type="text" name="a4" id="a4" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();" onChange="return val_zero('a4','err_a4');" 
											onblur="return val_mobile('a4','err_a4');" value="<%=s4%>"/>
                &nbsp;&nbsp;&nbsp;<span id="err_a4"></span>  
              </label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><label></label></td><td>&nbsp;&nbsp;  </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td><td>&nbsp;&nbsp;  </td>
            </tr>
          <tr>
                      <td class="style2">                        </td>
                      <td class="style2"> <input type="submit" name="add" value="Add Test" class="buttons" onClick="return validatePage('a1|a2|a3|a4','err_a1|err_a2|err_a3|err_a4','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />&nbsp;&nbsp;<input type="submit" name="update" value="Update" class="buttons" onClick="return validatePage('a1|a2|a3|a4','err_a1|err_a2|err_a3|err_a4','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />&nbsp;&nbsp;  &nbsp;&nbsp;  <input type="submit" name="delete" value="Delete" class="buttons" onClick="return validatePage('a1','err_a1','Should Not Be Blank');"  /></td>
                      <td width="138" class="style2"><label>
                        
                      <input type="reset" name="cancel" value="Cancel" />
                </label></td>
              </tr>
          </table>
                      <%=msg%></td>
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
