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

/**
 *
 * @author kumar s
 */
public class register extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            if(request.getParameter("Save")!=null){
         String a1=request.getParameter("a1");
               String a2=request.getParameter("a2");
                    String a3=request.getParameter("a3");
                    String a4=request.getParameter("a4");
        String age=request.getParameter("age");
        String dob=request.getParameter("birthdate");
      String a5=request.getParameter("a5");
               String a6=request.getParameter("a6");
                    String a7=request.getParameter("a7");
                    String a8=request.getParameter("a8");
                     String a9=request.getParameter("a9");
                    String a10=request.getParameter("a10");
            
        String dor=dateNow;
        
            
                  int tid=0,tid1=0,tid2=0,tid3=0,tid4=0;
                  String[] a11=new String[2];
                  String a12="";
       String leave="null";
           String dat="sat";
  
               System.out.println(a1+"         "+age+"         "+dob+"         "+a2+"         "+a3+"         "+a4+"         "+a5+a6);
                    	   if((a1.equals(""))||(age.equals(""))||(dob.equals(""))||(a2.equals(""))||(a3.equals(""))||(a4.equals(""))||(a5.equals(""))||(a6.equals(""))||(a7.equals("")))
                           {
                  request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("register.jsp");
			requestdispatcher.forward(request, response);
              }
			else
				{
                       
                  ResultSet rs2 = st2.executeQuery("select max(uid) from register ");
				if (rs2.next()) {
                                    a12=rs2.getString(1);
                                    a11=a12.split("UID");
                                    System.out.println(a11[1]);
					tid =Integer.parseInt( a11[1]);
					tid1=tid+1;
				

				} 
                                  
                                String r="UID"+tid1;
//                                         String sid="UID"+tid3;
         //  int v=st.executeUpdate("insert into token values('"+tid1+"','"+sid+"','"+name+"','"+age+"','"+address+"','"+patient+"','"+room+"','"+dor+"','"+dat+"','"+reason+"','"+a1+"','"+a2+"','','')");
                    ps = (PreparedStatement) con.prepareStatement("Insert into register values(?,?,?,?,?,?,?,?,?,?)");
                     ps.setString(1, r);
                    ps.setString(2, a1);
                    ps.setString(3, a2);
                    ps.setString(4, a4);
                    ps.setString(5, dob);
                    ps.setString(6, age);
                    ps.setString(7, a5);
                    ps.setString(8, a6);
                    ps.setString(9, a7);
                    ps.setString(10, "patient");
                     
                    int j=ps.executeUpdate();
                if((j==1))  {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Account Registered Successfully");
                     request.setAttribute("msg1", "UserID: UID"+tid1);
                 
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("register.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Password didnot match");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("register.jsp");
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
