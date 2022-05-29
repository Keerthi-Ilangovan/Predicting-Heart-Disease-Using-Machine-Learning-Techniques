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
public class testdetail extends HttpServlet {

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
             String a7 = request.getParameter("a7");
             String a8 = request.getParameter("a8");
             String a9 = request.getParameter("a9");
             String a10 = request.getParameter("a10");
       String a11=null;
            String s1 = null;
            String s2 = null;
            String s3 = null;

       

            ArrayList al = new ArrayList();

           
            String c = null, c1 = null, c2 = null, c3 = null, c4 = null, c5 = null;
             String r1 = request.getParameter("q1");
             String r2 = request.getParameter("q2");
             String r3 = request.getParameter("q3");
             String r5 = request.getParameter("q5");
             String r4 = request.getParameter("q4");

            if (request.getParameter("add") != null) {
                    
          
                int i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0;
                 Date date = new Date();
SimpleDateFormat sdf;

sdf = new SimpleDateFormat("MMMM");
 a11=sdf.format(date);
               i1 = Integer.parseInt(a5);
           i2 = Integer.parseInt(a6);
           i3 = Integer.parseInt(a7);
           i4 = Integer.parseInt(a8);
           i5 = Integer.parseInt(a9);
           
                
                  ResultSet rs1 = smt1.executeQuery("select * from cost where product='" + r1 + "'");
                while (rs1.next()) {
                    b1 = Integer.parseInt(rs1.getString(3));
                }
                  System.out.println(b4);
               cl1=(b1*i1);
           
                   System.out.println(b4);
                ResultSet rs2 = smt2.executeQuery("select * from cost where product='" + r2 + "'");
                while (rs2.next()) {
                    b2 = Integer.parseInt(rs2.getString(3));
                }
              cl2=(b2*i2)+0;
                  System.out.println("COST5  "+cl2);
                ResultSet rs3 = smt3.executeQuery("select * from cost where product='" + r3 + "'");
                while (rs3.next()) {
                    b3 = Integer.parseInt(rs3.getString(3));
                }
              cl3=(b3*i3)+0;
               System.out.println("COST5  "+cl3);
                 ResultSet rs4 = smt4.executeQuery("select * from cost where product='" + r4 + "'");
                while (rs4.next()) {
                    b4 = Integer.parseInt(rs4.getString(3));
                }
                   cl4=(b4*i4)+0;
                    System.out.println("COST5  "+cl4);
                      
                 ResultSet rs5 = smt5.executeQuery("select * from cost where product='" + r5 + "'");
                while (rs5.next()) {
                    b5 = Integer.parseInt(rs5.getString(3));
                }
                  cl5=(b5*i5)+0;
                       System.out.println("COST5  "+cl5);       
                tt=cl1+cl2+cl3+cl4+cl5;
                System.out.println("TOTAL COST"+tt);
               p1="RS"+tt; 
                
           
       
                ResultSet rs6 = smt6.executeQuery("select * from dealermgmt where uname='"+ so.getAttribute("un")+ "'");
                while (rs6.next()) {
                    c1 = rs6.getString(1);
                    c2 = rs6.getString(2);
                    c3 = rs6.getString(3);
                    c4 = rs6.getString(4);
                }
                System.out.println(c1);
                System.out.println(c2);
                System.out.println(c3);
                System.out.println(c4);
                
                
                
           //stock1     calculation               
                 System.out.println("Select * from stockdetails where product='"+ r1 +"'and Area='"+ c3 +"'and Subarea='"+ c4 +"'");
                ResultSet rs7 = smt7.executeQuery("Select * from stockdetails where product='" + r1 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                while (rs7.next()) {

                    t1 = Integer.parseInt(rs7.getString(4));
                                      System.out.println("product1 BEFORE   "+t1);

              }

                t2 = t1-i1;
                  System.out.println("product1 BEFORE   "+t1);
                System.out.println("product1 AFTER "+t2);
                
            //stock2     calculation               
                 System.out.println("Select * from stockdetails where product='"+ r2 +"'and Area='"+ c3 +"'and Subarea='"+ c4 +"'");
                ResultSet rs8 = smt8.executeQuery("Select * from stockdetails where product='" + r2 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                while (rs8.next()) {

                    t3 = Integer.parseInt(rs8.getString(4));
       System.out.println("product2 BEFORE   "+t3);
                }

                t4 = t3-i2;
              
                System.out.println("product2 AFTER "+t4);
     //stock3     calculation                                  
 System.out.println("Select * from stockdetails where product='"+ r3 +"'and Area='"+ c3 +"'and Subarea='"+ c4 +"'");
                ResultSet rs9 = smt9.executeQuery("Select * from stockdetails where product='" + r3 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                while (rs9.next()) {

                    t5 = Integer.parseInt(rs9.getString(4));
       System.out.println("product2 BEFORE   "+t5);
                }

                t6 = t5-i3;
                     System.out.println("product3 BEFORE   "+t5);
                System.out.println("product3 AFTER "+t6);
                
      //stock4     calculation  
                System.out.println("Select * from stockdetails where product='"+ r4 +"'and Area='"+ c3 +"'and Subarea='"+ c4 +"'");
                     ResultSet rs10 = smt10.executeQuery("Select * from stockdetails where product='" + r4 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                while (rs10.next()) {

                    t7 = Integer.parseInt(rs10.getString(4));
    System.out.println("product4 BEFORE   "+t7);
                }

                t8 = t7-i4; 
            
                System.out.println("product4 AFTER    "+t8);
    //stock5     calculation                  
                 ResultSet rs11 = smt11.executeQuery("Select * from stockdetails where product='" + r5 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                while (rs11.next()) {

                    t9 = Integer.parseInt(rs11.getString(4));
                      System.out.println("product5 BEFORE   "+t9);
  
                }

              t10 = t9-i5; 
                
           
                System.out.println("product5 AFTER "+t10);
            
           
                int k = smt12.executeUpdate("update stockdetails set stock='" + t2 + "' where product='" + r1 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                System.out.println("update stockdetails set stock='" + t2 + "' where product='" + r1 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
               
                int k1 = smt13.executeUpdate("update stockdetails set stock='" + t4 + "' where product='" + r2 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                    System.out.println("update stockdetails set stock='" + t4 + "' where product='" + r2 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
               
                    int k2 = smt14.executeUpdate("update stockdetails set stock='" + t6 + "' where product='" + r3 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                System.out.println("update stockdetails set stock='" + t6 + "' where product='" + r3 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                
                
                 int k3 = smt14.executeUpdate("update stockdetails set stock='" + t8 + "' where product='" + r4 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                System.out.println("update stockdetails set stock='" + t8 + "' where product='" + r4 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                
                
                 int k4 = smt14.executeUpdate("update stockdetails set stock='" + t10 + "' where product='" + r5 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
                System.out.println("update stockdetails set stock='" + t10 + "' where product='" + r5 + "' and Area='" + c3 + "'and Subarea='" + c4 + "'");
               
                int v = smt.executeUpdate("insert into filling values('" + randomInt + "','" + a1 + "','" + a2 + "','" + a3 + "','" + c3 + "','" + c4 + "','" + r1 + "','" + a5 + "','" + r2 + "','" + a6 + "','" + r3 + "','" + a7 + "','" + r4 + "','" + a8 + "','" + r5 + "','" + a9 + "','" + tt + "','" + c1 + "','" + c2 + "','" + a4 + "','" + a11 + "')");
                 System.out.println("insert into filling values('" + randomInt + "','" + a1 + "','" + a2 + "','" + a3 + "','" + c3 + "','" + c4 + "','" + r1 + "','" + a5 + "','" + r2 + "','" + a6 + "','" + r3 + "','" + a7 + "','" + r4 + "','" + a8 + "','" + r5 + "','" + a9 + "','" + tt + "','" + c1 + "','" + c2 + "','" + a4 + "','" + a11 + "')");
                if ((v == 1)) {
                    request.setAttribute("ok", "1");
                 request.setAttribute("s4", p1);
                    request.setAttribute("msg", "Successfully stored");
                    RequestDispatcher rs = request.getRequestDispatcher("fill.jsp");
                    rs.forward(request, response);
                } else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                    RequestDispatcher rs = request.getRequestDispatcher("fill.jsp");
                    rs.forward(request, response);
                }
                
                            
                
                
            } else if (request.getParameter("search") != null) {
                  
                 
                //SELECT * FROM ration.usermgmt u where ratioocode='RIDTN1001' and area='Coimbatore' and subares='Gandhipuram';
                ResultSet rs = smt6.executeQuery(" SELECT * FROM register where userid='" + a1+ "'");

                while (rs.next()) {
                    s1 = rs.getString(1);
                    s2 = rs.getString(2);
                    s3 = rs.getString(6);


                }

                request.setAttribute("ss", "1");
                request.setAttribute("ss1", "1");
                request.setAttribute("s1", s1);
                request.setAttribute("s2", s2);
                request.setAttribute("s3", s3);



                RequestDispatcher requestdispatcher = request.getRequestDispatcher("testdetail.jsp");
                requestdispatcher.forward(request, response);

            } else {


                request.setAttribute("ok", "1");
                request.setAttribute("msg", "Please enter the value");
                RequestDispatcher rs = request.getRequestDispatcher("testdetail.jsp");
                rs.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally {            
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
