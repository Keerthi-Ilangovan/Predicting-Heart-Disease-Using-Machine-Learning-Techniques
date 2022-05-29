/*
 * To change this template, choose Tools | Templates
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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class d2 extends HttpServlet {

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
                    String url = "jdbc:mysql://localhost:3306/phrs";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();    Statement st1 = con.createStatement();
            String s1=request.getParameter("s1");
            String s2 = request.getParameter("s2");
            String a1= request.getParameter("a1");
            String a2 = request.getParameter("a2");
         String a3= request.getParameter("a3");
                  String a4 = request.getParameter("a4");
         String a5= request.getParameter("a5");
            String a6= request.getParameter("a6");
            String a7 = request.getParameter("a7");
         String a8= request.getParameter("a8");
           
            
                   java.util.Date st11 = new java.util.Date();
                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10
System.out.println(a8);
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                String f = formatter.format(st11);
                System.out.println("Formatted date is ==>" + f);
         HttpSession so = request.getSession(true);
              String v3=null,v1=null,v2=null;
            if((s1!=null) )
            {
            if((a1!=null)|| (a2!=null)|| (a3!=null)|| (a4!=null))
            {
   
             
   int h=0;
      ResultSet rs2 = st1.executeQuery("select * from inform where did='"+a1+"'");

    if(rs2.next())
		{
  
	h=1; 
       		   } 
    if(h==1){
         request.setAttribute("ok", "1");
                        request.setAttribute("msg", "already exist");
                        RequestDispatcher rs1 = request.getRequestDispatcher("d2.jsp");
                        rs1.forward(request, response);
    }else{
       
                    //   System.out.println("update register set username='" + a1 + "', password='"+a2+"',name='"+a3+"',email='"+a4+"',address='"+a5+"',mobile='"+a6+"',image='"+a7+"' where username='" + so.getAttribute("un") + "'");
                       int v = st.executeUpdate("insert into inform values('"+a1+"','"+so.getAttribute("un3")+"','"+a2+"','"+a3+"','"+a4+"','"+so.getAttribute("un")+"','"+f+"')");
                    if (v == 1) {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg", "Updated Successfully");
                        RequestDispatcher rs = request.getRequestDispatcher("d2.jsp");
                        rs.forward(request, response);
                    } else {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg", "Please enter the value");
                        RequestDispatcher rs = request.getRequestDispatcher("d2.jsp");
                        rs.forward(request, response);
                    }
    }
    	    
           
               
               
              
            }else {
           request.setAttribute("ok", "1");
               request.setAttribute("msg", "Please Enter all the Values");
	       RequestDispatcher requestdispatcher = request.getRequestDispatcher("d2.jsp");
	       requestdispatcher.forward(request, response); 
            }
                                    
            
            }else {
                 request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("d2.jsp");
			requestdispatcher.forward(request, response);
            }
            
            
            
            
            
            
        }catch(Exception e) {
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
