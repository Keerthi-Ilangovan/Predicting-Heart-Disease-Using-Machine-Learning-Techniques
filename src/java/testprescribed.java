/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kumar s
 */
public class testprescribed extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      try {
                        int randomInt = 0;
            Random randomGenerator = new Random();
            for (int idx = 1; idx <= 10; ++idx) {
                randomInt = randomGenerator.nextInt(1000);

            }
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/phrs";
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
       
       
            con = (Connection) DriverManager.getConnection(url, "root", "root");
             int b1 = 0, b2 = 0, b3 = 0, b4 = 0, b5 = 0, b6 = 0, b7 = 0;
             
              int cl1 = 0, cl2 = 0, cl3 = 0, cl4 = 0, cl5 = 0, cl6 = 0;
                  int sl1 = 0, sl2 = 0, sl3 = 0, sl4 = 0, sl5 = 0, sl6 = 0;
              int tt=0;
              String p1=null,p2=null;
            int t1 = 0, t2 = 0, t3 = 0, t4 = 0, t5 = 0, t6 = 0, t7 = 0, t8 = 0, t9 = 0, t10 = 0, t11 = 0, t12 = 0, t13 = 0;
            Statement smt = con.createStatement();
            Statement smt1 = con.createStatement();
            Statement smt2 = con.createStatement();
            Statement smt3 = con.createStatement();
            Statement smt4 = con.createStatement();
            Statement smt5 = con.createStatement();
            Statement smt6 = con.createStatement();
            Statement smt7 = con.createStatement();
            Statement smt8 = con.createStatement();
            Statement smt9 = con.createStatement();
            Statement smt10 = con.createStatement();
            Statement smt11 = con.createStatement();
            Statement smt12 = con.createStatement();
            Statement smt13 = con.createStatement();
            Statement smt14 = con.createStatement();
            Statement smt15 = con.createStatement();
            HttpSession so = request.getSession(true);
       
            String a1 = request.getParameter("a1");
            String a2 = request.getParameter("a2");
            String a3 = request.getParameter("a3");
            String a4 = request.getParameter("a4");
            String a5 = request.getParameter("a5");
            String a6 = request.getParameter("a6");
            String a11=null;
            String s1 = null;
            String s2 = null;
            String s3 = null;
                String s4 = null;
            String s5 = null;
            String s6 = null;
  	

            ArrayList al = new ArrayList();

           
            String c = null, c1 = null, c2 = null, c3 = null, c4 = null, c5 = null;
        String r1="",r2="",r3="",r4="";
        String[] b11=new String[4];
int tid=0,tid1=0;
            if (request.getParameter("add") != null) {
                    
          
                int i1 = 0; String i2 = null, i3 = null, i4 = null, i5 = null;
                 Date date = new Date();
SimpleDateFormat sdf;

sdf = new SimpleDateFormat("MMMM");
 a11=sdf.format(date);
               i1 = 1;
      
           
                
                  ResultSet rs1 = smt1.executeQuery("select * from test where tname='" + a6 + "' ");
                while (rs1.next()) {
                    b1 = Integer.parseInt(rs1.getString(4));
                }
                  System.out.println(b4);
               cl1=(b1*i1);
           
                   System.out.println(b4);
                
                String pt="pt1",pt1="pt1",pt2="pt1";
              
       
                
     System.out.println(i2);
                 ResultSet rs2 = smt2
			.executeQuery("select max(lid) from dtest ");
                 
				if (rs2.next()) {
                              
                                   r1=rs2.getString(1);
                                    b11=r1.split("LID");
                                    System.out.println(b11[1]);
					tid =Integer.parseInt( b11[1]);
					tid1=tid+1;
				r2="LID"+tid1;
                                  
				} else{
                                        tid1=1000;
				r2="LID"+tid1;
                                    }
                                   ResultSet rs3 = smt3
			.executeQuery("select * from doctor where did='"+so.getAttribute("un") +"' ");
				while (rs3.next()) {
                              
                                   r3=rs3.getString(1);
                                   r4=rs3.getString(2);
                                  
				} 
                                 String f11="";
           

sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
               ResultSet rs21 = smt7
			.executeQuery("select * from dtest where uid='"+a1+"'");
				if (rs21.next()) {
                              Transaction transaction1 = new Transaction(rs21.getString(6), rs21.getString(9), 1000L);
  Transaction transaction2 = new Transaction(a3, a6, 1000L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);
int sts=0;
        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
   sts=smt8.executeUpdate("insert into testblock values('"+firstBlock.hashCode()+"','"+transaction1+"','" + r3 + "','" + r4 + "','" + a1 + "','"+a3+"','"+a6+"','"+f11+"')");
             
				} else{
                                       
                                    }
                int v = smt.executeUpdate("insert into dtest values('" +r2 + "','" + a1 + "','" + r3 + "','" + r4 + "','" + a2 + "','" + a3 + "','"+ a4 +"','"+ a5 +"','"+ a6 +"','"+ cl1 +"','','','','','erererer')");
                 System.out.println("insert into dtest values('" +r2 + "','" + a1 + "','" + r3 + "','" + r4 + "','" + a2 + "','" + a3 + "','"+ a4 +"','"+ a5 +"','"+ a6 +"','"+ cl1 +"','','','','','erererer')");
                if ((v == 1)) {
                    request.setAttribute("ok", "1");
                
                    request.setAttribute("msg", "Successfully stored");
                    RequestDispatcher rs = request.getRequestDispatcher("doctortestprescribe.jsp");
                    rs.forward(request, response);
                } else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                    RequestDispatcher rs = request.getRequestDispatcher("doctortestprescribe.jsp");
                    rs.forward(request, response);
                }
                
                            
                
                
            } else if (request.getParameter("search") != null) {
              
              String f11="",f12="",f13="",r5="";
             
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1,sdf2;
 sdf2 = new SimpleDateFormat("yyyy-MM-dd");
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
 f12=sdf1.format(date);
  f13=sdf2.format(date);
 System.out.println(f12);System.out.println(f13);
   int vv=0,vv1=0,flag=0;
                         System.out.println(a1);
                         ResultSet rs3 = smt3.executeQuery("select * from doctor where did='"+so.getAttribute("un") +"' ");
				if(rs3.next()) {
                              
                                   r3=rs3.getString(1);
                                   r4=rs3.getString(2);
                                  r5=rs3.getString(6);
				} 
                                       
			
                                System.out.println("select COUNT(distinct patientid)  from searchblock where doctorid='"+so.getAttribute("un") +"' and specialist='" + r5 + "' and fdate='"+f12+"' ");
                                     ResultSet rs2 = smt3.executeQuery("select COUNT(distinct patientid)  from searchblock where doctorid='"+so.getAttribute("un") +"' and specialist='" + r5 + "' and fdate='"+f12+"' ");
				
                                    if (rs2.next()) {
                              vv=Integer.parseInt(rs2.getString(1));
                              if(vv<=5){
                                  flag=1;
                                 
                              }
                                 } else{
                                      request.setAttribute("ok", "1");
                request.setAttribute("msg", "Please enter the value");
                RequestDispatcher rs = request.getRequestDispatcher("doctortestprescribe.jsp");
                rs.forward(request, response);  
                                    }
                                    if(flag==1){
                                        String st1="",st2="";
                                System.out.println(" select uid,tid,uname ,specialist from token where tid='" + a1+ "' and conform='confirm' and dat='"+f13+"'");
                ResultSet rs = smt6.executeQuery(" select uid,tid,uname ,specialist from token where tid='" + a1+ "' and conform='confirm' and dat='"+f13+"'");

                if (rs.next())
                {
                    
                    s1 = rs.getString(1);
                    s2 = rs.getString(2);
                    s3 =rs.getString(3);
                    s4 = rs.getString(4);
            Transaction transaction1 = new Transaction(s2, s1, 10L);
  Transaction transaction2 = new Transaction(s2, a1, 500L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);
int sts=0;
        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
   sts=smt9.executeUpdate("insert into searchblock values('"+firstBlock.hashCode()+"','"+transaction1+"','" + r3 + "','" + r4 + "','" + r5 + "','" + s1 + "','"+s3+"','"+f11+"','"+f12+"','Test Enter information')");	

                }else{
                    s1 = "";
                    s2 = "";
                    s3 ="";
                    s4 = "";
                }
              System.out.println(s1);
              System.out.println(s2);
              System.out.println(s3);
                request.setAttribute("ss", "1");
                request.setAttribute("ss1", "1");
                request.setAttribute("s1", s2);
                request.setAttribute("s2", s1);
                request.setAttribute("s3", s3);
                   request.setAttribute("s4", s4);
            


                RequestDispatcher requestdispatcher = request.getRequestDispatcher("doctortestprescribe.jsp");
                requestdispatcher.forward(request, response);
                                    }else{
                                           request.setAttribute("ss", "1"); request.setAttribute("msg", "Cross the Limit");
                request.setAttribute("ss1", "1");
                request.setAttribute("s1", s2);
                request.setAttribute("s2", s1);
                request.setAttribute("s3", s3);
                   request.setAttribute("s4", s4);
            


                RequestDispatcher requestdispatcher = request.getRequestDispatcher("doctortestprescribe.jsp");
                requestdispatcher.forward(request, response);
                                    }
                                

            } else {


                request.setAttribute("ok", "1");
                request.setAttribute("msg", "Please enter the value");
                RequestDispatcher rs = request.getRequestDispatcher("doctortestprescribe.jsp");
                rs.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }  finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
