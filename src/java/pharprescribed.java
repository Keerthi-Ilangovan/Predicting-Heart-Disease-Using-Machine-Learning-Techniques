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
 * @author perumal s
 */
public class pharprescribed extends HttpServlet {

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
              String a = request.getParameter("a");
             String a1 = request.getParameter("a1");
             String a2 = request.getParameter("a2");
             String a3 = request.getParameter("a3");
             String a4 = request.getParameter("a4");
              String a5 = request.getParameter("a5");
             String a7 = request.getParameter("a7");
             String a9 = request.getParameter("a9");
             String a11 = request.getParameter("a11");
                 String a13 = request.getParameter("a13");
             String a15 = request.getParameter("a15");
            String r1 = request.getParameter("a6");
             String r2 = request.getParameter("a8");
             String r3 = request.getParameter("a10");
              String r4 = request.getParameter("a12");
             String r5 = request.getParameter("a14");
         String o1 = request.getParameter("r1");
             String o2 = request.getParameter("r2");
             String o3 = request.getParameter("r3");
             String o4 = request.getParameter("r4");
              String o5 = request.getParameter("r5");
             String o6 = request.getParameter("r6");
             String o7 = request.getParameter("r7");
             String o8 = request.getParameter("r8");
               String o9 = request.getParameter("r9");
             String o10 = request.getParameter("r10");
             String o11 = request.getParameter("r11");
             String o12 = request.getParameter("r12");
              String o13 = request.getParameter("r13");
             String o14 = request.getParameter("r14");
             String o15 = request.getParameter("r15");
              String o16 = request.getParameter("r16");
             String o17 = request.getParameter("r17");
             String o18 = request.getParameter("r18");
              String o19 = request.getParameter("r19");
               String o20 = request.getParameter("r20");
                  System.out.println(r1+r2+r3+r4+r5);
                System.out.println(a1+a2+a3+a4+a5+a7+a9+a11+a13+o15);
               System.out.println(o1+o2+o3+o4+o5+o6+o7+o8+o9+o10+a11+o12+o13+o14+o15+o16+o17+o18+o19+o20);
            String s1 = null;
            String s2 = null;
            String s3 = null;
 String s4 = null;
		String s5 = null;
		String s6 = null;                         
String s7 = null; 
       

            ArrayList al = new ArrayList();

           
            String c = null, c1 = null, c2 = null, c3 = null, c4 = null, c5 = null;
           
       

            if (request.getParameter("add") != null) {
                    
          
                int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0;
                 Date date = new Date();

//               i1 = Integer.parseInt(a7);
//           i2 = Integer.parseInt(a9);
//           i3 = Integer.parseInt(a11);
//          i4 = Integer.parseInt(a13);
//           i5 = Integer.parseInt(a15);
//           
//                
//                  ResultSet rs1 = smt1.executeQuery("select * from pharmacy where mname='" + r1 + "'");
//                while (rs1.next()) {
//                    b1 = Integer.parseInt(rs1.getString(4));
//                }
//                  System.out.println(b4);
//               cl1=(b1*i1);
//           
//                   System.out.println(b4);
//                ResultSet rs2 = smt2.executeQuery("select * from pharmacy  where mname='" + r2 + "'");
//                while (rs2.next()) {
//                    b2 = Integer.parseInt(rs2.getString(4));
//                }
//              cl2=(b2*i2)+0;
//                  System.out.println("COST5  "+cl2);
//                ResultSet rs3 = smt3.executeQuery("select * from pharmacy  where mname='" + r3 + "'");
//                while (rs3.next()) {
//                    b3 = Integer.parseInt(rs3.getString(4));
//                }
//              cl3=(b3*i3)+0;
//               System.out.println("COST5  "+cl3);
//                
//                    ResultSet rs4 = smt4.executeQuery("select * from pharmacy  where mname='" + r4 + "'");
//                while (rs4.next()) {
//                    b4 = Integer.parseInt(rs4.getString(4));
//                }
//              cl4=(b4*i4)+0;
//               System.out.println("COST5  "+cl4);
//                ResultSet rs5 = smt5.executeQuery("select * from pharmacy  where mname='" + r5 + "'");
//                while (rs5.next()) {
//                    b5 = Integer.parseInt(rs5.getString(4));
//                }
//              cl5=(b5*i5)+0;
//               System.out.println("COST5  "+cl3);
//                tt=cl1+cl2+cl3+cl4+cl5;
//                System.out.println("TOTAL COST"+tt);
//               p1="RS"+tt; 
                
           String uid1=so.getAttribute("un").toString();
       System.out.println("select * from doctor where did='"+ uid1+ "'");
                ResultSet rs6 = smt6.executeQuery("select * from doctor where did='"+ uid1+ "'");
                while (rs6.next()) {
                    c1 = rs6.getString(1);
                    c2 = rs6.getString(2);
                
                }
                System.out.println(c1);
                System.out.println(c2);
                System.out.println(c3);
                System.out.println(c4);
                
           
                 
          
               
                         
           
                
               
                int v = smt.executeUpdate("insert into dpharmacy values('" + a1+ "','" + c1 + "','" +c2+ "','" + a2+ "','" + a3 + "','" + a4+ "','" + a5 + "','" + r1 + "','" + a7 + "','" + o1 + "','" + o2 + "','" + o3 + "','" + o4 + "')");
                 int v1 = smt.executeUpdate("insert into dpharmacy values('" + a1+ "','" + c1 + "','" +c2+ "','" + a2+ "','" + a3 + "','" + a4+ "','" + a5 + "','" + r2 + "','" + a9 + "','" + o5 + "','" + o6 + "','" + o7 + "','" + o8 + "')");
                //  int v2 = smt.executeUpdate("insert into dpharmacy values('" + a2+ "','" + c1 + "','" +c2+ "','" + a1+ "','" + a3 + "','" + a4+ "','" + a9 + "','" + r3 + "','" + a11 + "','" + o9 + "','" + o10 + "','" + o11 + "','" + o12 + "')");
                // int v3 = smt.executeUpdate("insert into dpharmacy values('" + a2+ "','" + c1 + "','" +c2+ "','" + a1+ "','" + a3 + "','" + a4+ "','" + a11 + "','" + r4 + "','" + a13 + "','" + o13 + "','" + o14 + "','" + o15 + "','" + o16 + "')");
                //  int v4 = smt.executeUpdate("insert into dpharmacy values('" + a2+ "','" + c1 + "','" +c2+ "','" + a1+ "','" + a3 + "','" + a4+ "','" + a13 + "','" + r5 + "','" + a15 + "','" + o17 + "','" + o18 + "','" + o19 + "','" + o20 + "')");

                if ((v == 1)&&(v1 == 1)) {
                    request.setAttribute("ok", "1");
               
                    request.setAttribute("msg", "Successfully stored");
                    RequestDispatcher rs = request.getRequestDispatcher("pharmacy.jsp");
                    rs.forward(request, response);
                } else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                    RequestDispatcher rs = request.getRequestDispatcher("pharmacy.jsp");
                    rs.forward(request, response);
                }
                
                            
                
                
            } if(request.getParameter("search")!=null){
                String f11="",f12="",f13="";
             
                  Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1,sdf2;sdf2 = new SimpleDateFormat("yyyy-MM-dd");
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
 f12=sdf1.format(date);
  f13=sdf2.format(date);
   int vv=0,vv1=0,flag=0;
                         System.out.println(a1);
                         ResultSet rs3 = smt3.executeQuery("select * from doctor where did='"+so.getAttribute("un") +"' ");
				while (rs3.next()) {
                              
                                   r3=rs3.getString(1);
                                   r4=rs3.getString(2);
                                  r5=rs3.getString(6);
				} 
                                       
			
                                
                                     ResultSet rs2 = smt3
           
			.executeQuery("select COUNT(patientid)  from searchblock where doctorid='"+so.getAttribute("un") +"' and specialist='" + r5 + "' and fdate='"+f12+"' ");
				
                                    if (rs2.next()) {
                              vv=Integer.parseInt(rs2.getString(1));
                              if(vv<100){
                                  flag=1;
                                 
                              }
                                 } 
                                String st1="",st2="";
                      ResultSet rs = smt6.executeQuery("select uid,tid,uname ,specialist from token where tid='" + a1+ "' and conform='confirm' and dat='"+f13+"'");

                while (rs.next())
                {
                    s1 = rs.getString(1);
                    s2 = rs.getString(2);
                    s3 =rs.getString(3);
                    s4 = rs.getString(4);
             
  Transaction transaction1 = new Transaction(s2, s1, 1000L);
  Transaction transaction2 = new Transaction(s2, a1, 200L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);
int sts=0;
        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
   sts=smt9.executeUpdate("insert into searchblock values('"+firstBlock.hashCode()+"','"+transaction1+"','" + r3 + "','" + r4 + "','" + r5 + "','" + s1 + "','"+s3+"','"+f11+"','"+f12+"','Pharmacy Enter information')");	
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
			
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("pharmacy.jsp");
			requestdispatcher.forward(request, response);

		
                
                } else {


                request.setAttribute("ok", "1");
                request.setAttribute("msg", "Please enter the value");
                RequestDispatcher rs = request.getRequestDispatcher("pharmacy.jsp");
                rs.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {            
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
