/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WINDOWS 10
 */
public class verify1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
                     
               
    Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
  
        String url = "jdbc:mysql://localhost:3306/covid";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();  Statement st2 = con.createStatement();  Statement st1 = con.createStatement();
            if(request.getParameter("s1")!=null){
         String a1=request.getParameter("a1");
               String a2=request.getParameter("a2");
                    String a3=request.getParameter("a3");
                    String a4=request.getParameter("a4");
       String a5=request.getParameter("a5");
               String a6=request.getParameter("a6");
                    String a7=request.getParameter("a7");
                    String a8=request.getParameter("a8");
                     String a9=request.getParameter("a9");
                    String a10=request.getParameter("a10");
                String a11=request.getParameter("a11");
               String a12=request.getParameter("a12");
              String dor=dateNow;
         HttpSession so = request.getSession(true);
             
     String b1="",b2="",b3="";
               String c1="",c2="";
  
      
                    	   if((a1.equals(""))||(a2.equals(""))||(a3.equals(""))|| (a4.equals(""))||(a5.equals(""))||(a6.equals(""))||(a7.equals(""))||(a8.equals(""))||(a9.equals(""))||(a10.equals(""))||(a11.equals("")))
                           {
                               
                  request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("t1.jsp");
			requestdispatcher.forward(request, response);
              }
			else
				{
                        int i1=Integer.parseInt(a1);
               int i2=Integer.parseInt(a2);
               int i3=Integer.parseInt(a3);
               int i4=Integer.parseInt(a4);
               int i5=Integer.parseInt(a5);
               int i6=Integer.parseInt(a6);
                     int i7=Integer.parseInt(a7);
               int i8=Integer.parseInt(a8);
               int i9=Integer.parseInt(a9);
               int i10=Integer.parseInt(a10);
               int i11=Integer.parseInt(a11);
                     int i12=Integer.parseInt(a12);
              if(((i1>60)||(i1<80))||((i2>4)||(i2<6))||((i3>8)||(i3<20))||((i4>0)||(i4<200))||((i5>8)||(i5<12))||((i6>3.5)||(i6<5.2))||((i7>50)||(i7<550))||((i8>70)||(i8<110))||((i9>40)||(i9<70))||((i10>0)||(i10<130))||((i11>23.9)||(i1<34.9))||((i12>3.5)||(i2<8.0))){
                                    c1="Normal";
                                }else {
                   c1="High";
              }
              if(c1.equals("High")){
                       c2="0.200";
                   }else  if(c1.equals("Normal")){
                             c2="0.300";
                   } if(c1.equals("Very High")){
                             c2="0.400";
                   }
                  ResultSet rs2 = st2.executeQuery("select * from register where uname='"+so.getAttribute("un1")+"' ");
				if (rs2.next()) {
                                 
				b1=rs2.getString(1);
                                b2=rs2.getString(4);

				} 
                         System.out.println(c1);
          ps = (PreparedStatement) con.prepareStatement("Insert into verify1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, b1);
                    ps.setString(2, b2);
                    ps.setString(3, a1);
                    ps.setString(4, a2);
                    ps.setString(5, a3);
                    ps.setString(6, a4);
                    ps.setString(7, a5);
                    ps.setString(8, a6);
                    ps.setString(9, a7);
                    ps.setString(10, a8);
                    ps.setString(11, a9);
                    ps.setString(12, a10);
                    ps.setString(13, a11);
                    ps.setString(14, a12);
                    ps.setString(15, c1);
                     ps.setString(16, c2);
                    int j=ps.executeUpdate();
                if((j==1))  {
                      System.out.println(c1);
//                    request.setAttribute("ok", "1");
//                    request.setAttribute("msg", "Verified Successfully");
                
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("t2.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Not inserted");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("t1.jsp");
                    requestdispatcher.forward(request, response);}
                               
        
        }}}catch(Exception e){
            e.printStackTrace();
        }finally {            
            out.close();
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
