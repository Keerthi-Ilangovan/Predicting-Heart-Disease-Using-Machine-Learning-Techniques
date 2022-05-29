/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
public class lapply extends HttpServlet {

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

            String url1;

            HttpSession so = request.getSession(true);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veg", "root", "root");
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();
            Statement st4 = con.createStatement();
            Statement st5 = con.createStatement();
            Statement st6 = con.createStatement();
            int size; 
            int flag=0;
     PreparedStatement ps;
            String b = request.getParameter("b");
            String b1 = request.getParameter("a1");
            String b2=request.getParameter("a2");
            String a1="",a2="",a3="",a4="",bt1="",phone="",phone1=""; 

            if (request.getParameter("t1") != null) {
               
                    int s1=0,s2=0,s3=0;
                    java.util.Date st11 = new java.util.Date();
                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10
     
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                String f = formatter.format(st11);
                System.out.println("Formatted date is ==>" + f);
              
                        ResultSet r2=st2.executeQuery("select max(gid) from lapply  ");
			if(r2!=null)
			{
                        if(r2.next())
			{
                          s1=Integer.parseInt(r2.getString(1));
                          s2=s1+1;
                        }  
                        }else{
                            s2=1000;
                        }   
                              
 int v=0;
    	
             
                           File file = new File(b2);
                FileInputStream fis = new FileInputStream(file);
                long filesize = file.length();
		long filesizeInKB = filesize / 1024;
                
        
       
                           
        
                   ResultSet rs1 = (ResultSet) st.executeQuery("select * from loan where gid='"+b+"'");
        
                 
	       if(rs1.next())
	   	      {
	   		 
               
                    PreparedStatement pstmt = con.prepareStatement("insert into lapply values ( ?,?,?,?,?,?,?,?,?,?)");
               pstmt.setString(1, s2+"");
                pstmt.setString(2, b);
                       pstmt.setString(3, rs1.getString(2));
                     pstmt.setString(4, rs1.getString(5));
        pstmt.setBinaryStream(5, fis, file.length());
                pstmt.setString(6, file.getName());
                   pstmt.setString(7, so.getAttribute("un").toString());
               pstmt.setString(8, f);
                pstmt.setString(9, "");
             pstmt.setString(10, "");
                     
                   int i=  pstmt.executeUpdate();
              if(i==1){
                   request.setAttribute("ok", "1");

                    request.setAttribute("msg", "applied Successfully");
                  RequestDispatcher rs5=request.getRequestDispatcher("floan.jsp");
                  rs5.forward(request, response);
              }else{

                    request.setAttribute("ok", "1");
                request.setAttribute("msg", "Upload Failed");
                    RequestDispatcher requestdispatcher1 = request.getRequestDispatcher("floan.jsp");
                    requestdispatcher1.forward(request, response);
                } 
            
                }
                     
                
                
                
               

    




        } else{
                    request.setAttribute("ok", "1");
                request.setAttribute("msg", "Please enter Correctly");
                    RequestDispatcher requestdispatcher1 = request.getRequestDispatcher("floan.jsp");
                    requestdispatcher1.forward(request, response);
                }

    }catch (Exception e) {
            e.printStackTrace();
        } finally {            
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
