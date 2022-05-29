/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author perumal s
 */
public class department extends HttpServlet {

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
            if (request.getParameter("Submit") != null) {
             
                String a1 = request.getParameter("a1");
                String a2 = request.getParameter("a2");
                String a3 = request.getParameter("a3");
                String a4 = request.getParameter("a4");
               

       
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phrs", "root", "root");
                Statement st = con.createStatement();
           
   
    if((a1.equals(""))||(a2.equals(""))||(a3.equals(""))||(a4.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("department.jsp");
                     rs.forward(request, response); 
              }else{

                  
                    int val = st.executeUpdate("insert into department values('" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "')");
                 

                    
                    if (val == 1) {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg",
                                "Transfered Successfully");
                        RequestDispatcher requestdispatcher = request.getRequestDispatcher("department.jsp");
                        requestdispatcher.forward(request, response);

                    }
               else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Transfered Failure");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("department.jsp");
                    requestdispatcher.forward(request, response);
                }
            }}  else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Please enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("department.jsp");
                    requestdispatcher.forward(request, response);
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
