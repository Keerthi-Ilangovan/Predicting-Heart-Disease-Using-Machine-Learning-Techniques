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
import java.util.Arrays;
import java.util.Date;
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
public class login1 extends HttpServlet {

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
            String url = "jdbc:mysql://localhost:3306/covid";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();         
            Statement st1 = con.createStatement();        
            Statement st2 = con.createStatement();
            String vname = request.getParameter("a1");
            String vpass = request.getParameter("a2");
                 HttpSession so = request.getSession(true);
  
                 System.out.println(vname);
                System.out.println(vpass);
                	String b2=null;
                	String b3=null;
                        String b4=null; String b5=null,b6="";
            if ((request.getParameter("s1"))!= null) {
               
                String rno = null;
                String pw = null;
                String roll = null;
                int flag = 0;
                        
	    
              String f11="";
            Date date = new Date();
SimpleDateFormat sdf;

sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date);
                  ResultSet rs1 = (ResultSet) st1.executeQuery("select * from doctor where uname='"+vname+"' and role='Doctor'");

                 
	   
	        if(rs1.next())
	   	      {
	   		b2=rs1.getString(9);
                        b3=rs1.getString(10);
                         	   
	        if((vname.equalsIgnoreCase(b2))&&(vpass.equalsIgnoreCase(b3)))
                {
                    b4=rs1.getString(11);
                             b5=rs1.getString(1);
                             b6=rs1.getString(6);
                             System.out.println(b2);
                System.out.println(b3); System.out.println(vname);
                System.out.println(vpass);
	   	 flag=1;
                }else{
                  
              }
                      }
                   so.setAttribute("un", b5);
                so.setAttribute("un1", vname);
                 so.setAttribute("un2", vpass);
                     so.setAttribute("un3", b6);
                if((flag==1)&&(b4.equalsIgnoreCase("Doctor"))){
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("doctor.jsp");
		 requestdispatcher.forward(request, response);
                }
//                else if((flag==1)&&(b4.equalsIgnoreCase("Admin"))){
//                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("admin.jsp");
//		 requestdispatcher.forward(request, response);
//                }else if((flag==1)&&(b4.equalsIgnoreCase("patient"))){
//                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("user.jsp");
//		 requestdispatcher.forward(request, response);
//                }else if((flag==1)&&(b4.equalsIgnoreCase("Lab"))){
//                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("lab.jsp");
//		 requestdispatcher.forward(request, response);
//                }else if((flag==1)&&(b4.equals("Nurse"))){
//                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("nurse.jsp");
//		 requestdispatcher.forward(request, response);
//                }
                else{
                      request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("login1.jsp");
		 requestdispatcher.forward(request, response);
                }
        

            } else{
                      request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("login.jsp");
		 requestdispatcher.forward(request, response);
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
