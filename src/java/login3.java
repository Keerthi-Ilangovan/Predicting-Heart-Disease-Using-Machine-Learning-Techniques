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
 * @author PERUMAL
 */
public class login3 extends HttpServlet {

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
             
                   
                      ResultSet rs3 = (ResultSet) st2.executeQuery("select * from login where uname='"+vname+"' ");
        
                 
	        if(rs3.next())
	   	      {
	   		b2=rs3.getString(1);
                        b3=rs3.getString(2);
                         	   
	        if((vname.equalsIgnoreCase(b2))&&(vpass.equalsIgnoreCase(b3))) {
                     b4=rs3.getString(4);
	   	 flag=1;
                 Transaction transaction1 = new Transaction(b2, b3, 100L);
  Transaction transaction2 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);

        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
    int sts=st1.executeUpdate("insert into loginblock values('"+firstBlock.hashCode()+"','"+transaction1+"','"+vname+"','"+vpass+"','"+f11+"','Valid','Admin Login')");
                }else{
                    Transaction transaction1 = new Transaction(b2, b3, 100L);
  Transaction transaction2 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);

        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
    int sts=st1.executeUpdate("insert into loginblock values('"+firstBlock.hashCode()+"','"+transaction1+"','"+vname+"','"+vpass+"','"+f11+"','InValid','Admin Login')");
                }
                      }
//                  ResultSet rs1 = (ResultSet) st1.executeQuery("select * from doctor");
//
//                 
//	   
//	        while(rs1.next())
//	   	      {
//	   		b2=rs1.getString(8);
//                        b3=rs1.getString(9);
//                         	   
//	        if((vname.equalsIgnoreCase(b2))&&(vpass.equalsIgnoreCase(b3)))
//                {
//                     b4=rs1.getString(10);
//                             b5=rs1.getString(1);
//                             b6=rs1.getString(6);
//                             System.out.println(b2);
//                System.out.println(b3); System.out.println(vname);
//                System.out.println(vpass);
//	   	 flag=1;
//                }
//                      }
                   so.setAttribute("un", b5);
                so.setAttribute("un1", vname);
                 so.setAttribute("un2", vpass);
                     so.setAttribute("un3", b6);
//                if((flag==1)&&(b4.equalsIgnoreCase("Doctor"))){
//                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("doctor.jsp");
//		 requestdispatcher.forward(request, response);
//                }
//                else 
                     if((flag==1)&&(b4.equalsIgnoreCase("Admin"))){
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("admin.jsp");
		 requestdispatcher.forward(request, response);
                }
//                         else if((flag==1)&&(b4.equalsIgnoreCase("patient"))){
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
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("login3.jsp");
		 requestdispatcher.forward(request, response);
                }
        

            } else{
                      request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("login3.jsp");
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
