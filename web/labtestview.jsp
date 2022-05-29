

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
  padding: 16px 16px;
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
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style20 {font-size: 16px}
.style21 {font-size: 14px}
.style22 {color: #666666}
.style23 {
	font-size: 14px;
	color: #666666;
	font-weight: bold;
}
.style26 {color: #999999; font-weight: bold; font-size: 14; }
-->
        </style>><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
    <body bgcolor="#CCCCCC"><form action="updateteststatus" method="post" >
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
  <a href="lab.jsp">Home</a>
  <a href="labtestview.jsp" class="active">Lab Status</a>
  <a href="login2.jsp">Log_out</a>
   
   
</div>
   </td>
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
            <td height="335"><table width="709" border="0" align="center">
          <tr>
            <td width="703" height="37" align="center"><div align="center"><span class="style4 style18 style20"> Token Confirmation </span></div></td>
          </tr>
          <tr>
            <td><table width="734" border="0">
              <tr>
                <td width="724"><table  align="center" width="596" height="10" border="0">
  <tr>
    <td width="599"><table width="730" height="43" border="3" >
   <tr>
      <td width="69" height="33" ><div align="center" class="style26">Select</div></td>
      <td width="138"><div align="center" class="style26"><strong>User Id </strong></div></td>
      <td width="188"><div align="center" class="style26"><strong> Name </strong></div></td>
	  <td width="129"><div align="center" class="style26"><strong>Specialist</strong></div></td>
      <td width="168"><div align="center" class="style26"><strong>Subdate</strong></div></td>
    </tr>
	
	</table>
   </td>
  </tr>
</table></td>
              </tr>
              <tr>
                <td><table width="726" border="1"  align=center>

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
		ResultSet rs = st.executeQuery("select * from dtest where status=''");
		if(rs!=null)
			{ while(rs.next())
		{	
       
	 %>
	
    <tr>
      <td width="78" >   
        
              <div align="center">
                  <input name="radiobutton" type="radio" value="<%=rs.getString(1)%>" />
               </div></td>
      <td width="135"><div align="center"><%=rs.getString(3)%></div></td>
      <td width="185"><div align="center"><%=rs.getString(3)%></div></td>
        <td width="127"><div align="center"><%=rs.getString(6)%></div></td>
      <td width="167"><div align="center"><%=rs.getString(8)%></div></td>
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
              <table align="center" width="603" border="0">
  <tr>
    <td width="597"><table width="126" border="0" align="Center">
  <tr>
    <td width="59"  align="center"><label>
     
        <input type="submit" name="b" value="View" class="buttons"/>
       
    </label></td>
    <td width="57"><label></label></td>  </tr>
</table></td>
  </tr>
</table><table  align="center" width="607" height="470" border="0">
  <tr>
    <td width="601" height="466"><table  align="center"width="595" border="0">
  <tr>
    <td width="232" height="37"><div align="right" class="style13 style21 style22"><strong>Token Id  *</strong></div></td>
   <td>&nbsp;</td>
    <td width="336"><label>
          <input type="text" id="a1" name="a1" readonly class="displayValue" style="width:180px"  onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=a1%>"/>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<span id="err_a1"></span>
        </label>&nbsp;</td>
  </tr>
          
 
              <tr>
                <td height="34"><div align="right" class="style13 style21 style22"><strong>User ID  *</strong></div></td>
      <td>&nbsp;</td>
      <td><label>
        <input type="text" id="a2" name="a2"  class="displayValue" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a2','err_a2');" onBlur="return txt_empty('a2','err_a2','Should Not Be Blank');" value="<%=a2%>" readonly />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<span id="err_a2"></span>
        </label>
       &nbsp;</td>
    </tr>
              
              <tr>
                <td height="33"><div align="right" class="style13 style21 style22"><strong>Name * </strong></div></td>
      <td>&nbsp;</td>
      <td><input type="text" id="a3" name="a3"  class="displayValue" style="width:180px"  onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a3','err_a3');" onBlur="return txt_empty('a3','err_a3','Should Not Be Blank');" value="<%=a3%>" readonly />        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<span id="err_a3"></span>
									<label></label>
      &nbsp;</td>
    </tr>
              <tr>
                <td height="39"><div align="right" class="style13 style21 style22"><strong>Specailist*</strong></div></td>
      <td>&nbsp;</td>
      <td><label>
        <input type="text" id="a4" name="a4"  class="displayValue"  style="width:180px"  maxlength="10"onkeypress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a4','err_a4');" onBlur="return txt_empty('a4','err_a4','Should Not Be Blank');" value="<%=a4%>" readonly />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<span id="err_a4"></span>
        </label>&nbsp;</td>
    </tr>
	 <tr>
                <td height="45"><div align="right" class="style13 style21 style22"><strong>Appointment Date *</strong></div></td>
      <td>&nbsp;</td>
      <td><label>
        <input type="text" style="width:180px" id="a5" name="a5" class="displayValue"  readonly="true" onChange="return val_zero('a5','err_a5');" />
   <a href="javascript:NewCssCal('a5','ddmmyyyy')"><img src="image/cal.jpg" alt="" width="25" height="21" /></a>
           <span id="err_a5"></span>
        </label>&nbsp;</td>
    </tr>
	    <tr>
                <td height="40"><div align="right" class="style13 style21 style22"><strong>Status*</strong></div></td>
      <td>&nbsp;</td>
      <td><label>
       
        </label>
        <label>
                <input type="text" id="a6" name="a6"  class="displayValue"  style="width:180px"  maxlength="10"onkeypress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a6','err_a6');" onBlur="return txt_empty('a6','err_a6','Should Not Be Blank');" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							  <span id="err_a6"></span></label></td>
    </tr>  <tr>
            <td height="52"><div align="right" class="style13 style21 style22"><strong>Lab Prescribed  *</strong></div></td> 
            <td>&nbsp;</td>
            <td><label>
              <div align="left">
  <textarea id="a7" name="a7" style="width:180px" class="displayValue" onChange="return val_zero('a7','err_a7');"  onBlur="return txt_empty('a7','err_a7','Should Not Be Blank');"></textarea>
  &nbsp;&nbsp;<span id="err_a5"></span></div>
            </label></td>
          </tr>         
		   <tr>
            <td height="49"><div align="right" class="style23">File *</div></td> 
            <td>&nbsp;</td>
            <td><label>
            <input type="file" name="a8">
           
            </label></td>
          </tr>   
		       <tr>
                <td height="40"><span class="style22"></span></td>
                <td>&nbsp;</td>
     <td><label><input type="submit" name="b" value="Save" class="buttons" onClick="return validatePage('a1|a2|a3|a4|a5|a6|a7','err_a1|err_a2err_a3|err_a4|err_a5|err_a6|err_a7','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"/>&nbsp;&nbsp;&nbsp;
        <input type="reset" name="t1" value="Cancel" class="buttons"/>
        </label>&nbsp;</td>  
    </tr>
  </table>
      <p class="style21"><%=msg%></p>
      <p>&nbsp;</p></td>
  </tr>
</table></td>
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
