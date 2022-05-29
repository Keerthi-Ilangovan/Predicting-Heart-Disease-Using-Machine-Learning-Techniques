
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
		<script type="text/javascript" src="js/datetimepicker_css.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" type="text/css" href="style.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
.style19 {font-weight: bold}
.style20 {
	color: #990000;
	font-weight: bold;
}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="pharprescribed" method="post">
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
      <a href="dtest.jsp">Booked Conform</a>
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Doctor Report<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="doctortestprescribe.jsp">Test</a>
      <a href="pharmacy.jsp" class="active">Prescription</a>
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
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="954" border="0">
              <tr>
                <td width="948" height="61"><p class="style1">&nbsp;</p>
                <p align="center" class="style1 style19"><strong></strong></p></td>
              </tr>
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
                <td align="center">
                 
                  <table width="939" border="0">
  <tr>
    <td width="933" height="48" align="center"><strong>Pharmacy Prescribed</strong></td>
  </tr>
  <tr>
    <td><table width="928" border="0">
        <tr>
          <td width="154"><span class="style14"><strong>Token ID <strong>*</strong></strong></span></td>
          <td width="224"><input type="text" id="a1" name="a1" maxlength="15"class="displayValue" style="width:180px"  onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" 
											onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=s1%>" />
										&nbsp;&nbsp;&nbsp;
				<span id="err_a1"></span>  </td>
          <td width="198"><input type="submit" name="search" value="SEARCH" ></td>
          <td width="85">&nbsp;</td>
          <td width="79">&nbsp;</td>
          <td width="77">&nbsp;</td>
          <td width="81">&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Patient ID  <strong>*</strong></strong></span></td>
          <td> <input name="a2" type="text" id="a2" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');"     onblur="return txt_empty('a2','err_a2','Name Should Not Be Blank');" value="<%=s2%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a2"></span>  </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Name <strong>*</strong></strong></span></td>
          <td> <input name="a3" type="text" id="a3" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a3','err_a3');"     onblur="return txt_empty('a3','err_a3','Name Should Not Be Blank');" value="<%=s3%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a3"></span>  </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Specialist <strong>*</strong></strong></span></td>
          <td><input name="a4" type="text" id="a4" class="displayValue" maxlength="15" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a4','err_a4');"     onblur="return txt_empty('a4','err_a4','Name Should Not Be Blank');" value="<%=s4%>" />
  &nbsp;&nbsp;&nbsp;<span id="err_a4"></span> </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Date<strong> *</strong></strong></span></td>
          <td><label>
                          <input type="text" id="a5" name="a5" onChange="return val_zero('a5','err_a5');" style="width:180px"  readonly="true" onBlur="return txt_empty('a5','err_a5','Should Not Be Blank');">                         
                        <a href="javascript:NewCssCal('a5','yyyymmdd')"><img src="image/cal.jpg" alt="" width="20" height="20"></a><span id="err_a5"> </span></label></td>
          <td>&nbsp;</td>
          <td><div align="center"><span class="style20">Morning</span></div></td>
          <td><div align="center"><span class="style20">Afternoon</span></div></td>
          <td><div align="center"><span class="style20">Eveinig</span></div></td>
          <td><div align="center"><span class="style20">Night</span></div></td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Medicine &amp; Describtion 1 </strong></span></td>
                <%

  String pro1=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select *  from pharmacy  ");
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
          <td><input type="text" name="a7" id="a7" class="displayValue" maxlength="10"  style="width:180px" onKeyPress="return numbersonly();"  />&nbsp;&nbsp;&nbsp;<span id="err_a7"></span>  </td>
          <td><label>
            <select name="r1">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select>
          </label></td>
          <td><select name="r2">
            <option value="Select">Select</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select></td>
          <td><select name="r3">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r4">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Medicine &amp; Describtion 2 </strong></span></td>
       <%

  String pro=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st2 = con1.createStatement();
		
			ResultSet rs2 = st2.executeQuery("select *  from pharmacy ");
  %> 
                        <td><label>
            <select name="a8" value="" style="width:180px" >
			 <%
          while (rs2.next()) {
				pro=rs2.getString(2);
           %>
              <option><%=pro%></option>
              <%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %> 
          <td><input type="text" name="a9" id="a9" onKeyPress="return numbersonly();" 
											 />            &nbsp;&nbsp;&nbsp;</td>
          <td><select name="r5">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r6">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r7">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r8">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Medicine &amp; Describtion 3 </strong></span></td>
                     <%

  String pro2=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st3 = con1.createStatement();
		
			ResultSet rs3 = st3.executeQuery("select *  from pharmacy  ");
  %> 
                        <td><label>
            <select name="a10" value="" style="width:180px" >
			 <%
          while (rs3.next()) {
				pro2=rs3.getString(2);
           %>
              <option><%=pro2%></option><%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>  
          <td> <input type="text" name="a11" id="a11"   style="width:180px" onKeyPress="return numbersonly();"  
											/>             </td>
          <td><select name="r9">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r10">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r11">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r12">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Medicine &amp; Describtion 4 </strong></span></td>
                  <%

  String pro3=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st3 = con1.createStatement();
		
			ResultSet rs3 = st3.executeQuery("select *  from pharmacy");
  %> 
                        <td><label>
            <select name="a12" value="" style="width:180px" >
			 <%
          while (rs3.next()) {
				pro3=rs3.getString(2);
           %>
              <option><%=pro3%></option><%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>  
          <td><input type="text" name="a13" id="a13"  style="width:180px" onKeyPress="return numbersonly();"  /></td>
          <td><select name="r13">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r14">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r15">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r16">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          </tr>
        <tr>
          <td><span class="style14"><strong>Medicine &amp; Describtion 5 </strong></span></td>
                    <%

  String pro4=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st3 = con1.createStatement();
		
			ResultSet rs3 = st3.executeQuery("select *  from pharmacy");
  %> 
                        <td><label>
            <select name="a14" value="" style="width:180px" >
			 <%
          while (rs3.next()) {
				pro4=rs3.getString(2);
           %>
              <option><%=pro4%></option><%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>  
          <td><input type="text" name="a15" id="a15"   style="width:180px" onKeyPress="return numbersonly();"  /> </td>
          <td><select name="r17">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r18">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r19">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          <td><select name="r20">
              <option value="Select">Select</option>
              <option value="Yes">Yes</option>
              <option value="No">No</option>
            </select></td>
          </tr>

        <tr>
          <td><span class="style14"></span></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"></span></td>
          <td>&nbsp;</td>
          <td><input type="submit" name="add" value="Save" class="buttons" onClick="return validatePage('a1|a2|a3|a4|a7|a9|a11|a13','err_a1|err_a2|err_a3|err_a4|err_a7|err_a9|err_a11|err_a13','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;<input type="reset" name="cancel" value="Cancel" /></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
        <tr>
          <td><span class="style14"></span></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          </tr>
      </table></td>
  </tr>
</table>

                  <%=msg%>
			    </td>
              </tr>
            
            </table></td>
      </tr>
          
    </table>
    
</form>
    </body>
</html>
