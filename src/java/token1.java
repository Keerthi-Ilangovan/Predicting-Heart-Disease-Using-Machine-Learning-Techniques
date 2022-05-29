/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Perumal S
 */
public class token1 extends HttpServlet {

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
                    randomInt = randomGenerator.nextInt(10000);

                }
           
        String a1=request.getParameter("a1");
        String a2=request.getParameter("a2");
 
        String a3=request.getParameter("a3");
   System.out.println(a1); 
   System.out.println(a2);
   System.out.println(a3);
    int tid=0,tid1=0,tid2=0;
           String dat="sat";
                
               HttpSession so=request.getSession(true);
    Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
        String url = "jdbc:mysql://localhost:3306/phrs";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
             String r1="",r2="",r3="",r4="",r5="",r6="",r7="";
                                    String[] a11=new String[4];
            Statement st = con.createStatement();     
            Statement st1 = con.createStatement();     
            Statement st2 = con.createStatement();
            if(request.getParameter("Save")!=null){
                   
                    	   if((a1.equals(""))||(a2.equals(""))||(a3.equals("")))
                           {
                  request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
			requestdispatcher.forward(request, response);
              }else {
                                ResultSet rs12 = st1
			.executeQuery("select * from size where Lmt<=(SELECT COUNT(dor) FROM token where dor='"+a2+"' GROUP BY dor) ");
				if (rs12.next()) {
                              
                                  request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Token Booking Cross the Limit");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
                    requestdispatcher.forward(request, response);
				} else{
                                    
                                      String sa=so.getAttribute("un").toString();
                                      ResultSet rs2 = st2
			.executeQuery("select max(mid(tid,5,4)) from token ");
				if (rs2.next()) {
                              
                                   r5=rs2.getString(1);
                                   
                                    System.out.println(a11[1]);
					tid =Integer.parseInt(r5);
					tid1=tid+1;
				r6="TKID"+tid1;
                                  
				} else{
                                        tid1=1000;
				r6="TKID"+tid1;
                                    }
                                System.out.println("select * from register where uid='"+so.getAttribute("un") +"'");
                        ResultSet rs1 = st2.executeQuery("select * from register where uid='"+so.getAttribute("un") +"'");
				if (rs1.next()) {
			        r1=rs1.getString(1);
				r2=rs1.getString(4);
                                r3=rs1.getString(9);
                                r4=rs1.getString(8);
                               	} 
                                  
                      System.out.println("insert into token values('"+r6+"','"+r1+"','"+r2+"','"+r3+"','"+r4+"','"+a1+"','"+a2+"','"+a3+"','','','"+dateNow+"')");
           int v=st.executeUpdate("insert into token values('"+r6+"','"+r1+"','"+r2+"','"+r3+"','"+r4+"','"+a1+"','"+a2+"','"+a3+"','','','"+dateNow+"')");
            
                if((v==1))  {

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Token Booked Successfully");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Token BookingFailed");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
                    requestdispatcher.forward(request, response);
                }
                                      
                                    }
                                  
                               
        
        }}}catch(Exception e){
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
