/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
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
public class doctor extends HttpServlet {

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
              Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/covid";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
                 Statement smt=con.createStatement();
            String a1=request.getParameter("a1");
             String a2=request.getParameter("a2");
                         String a3=request.getParameter("age");
                           String a4=request.getParameter("birthdate");
             String a5=request.getParameter("a5");
                         String a6=request.getParameter("a6");
                        String a7=request.getParameter("a7");
        
                       String a8="Doctor";
                         
                         
 String s1 = null;
		String s2 = null;
		String s3 = null;
                                         
 String s4 = null;
		String s5 = null;
		String s6 = null;                         
String s7 = null;   String s8 = null; 
		ArrayList al=new ArrayList();
    
             if(request.getParameter("add")!=null){
                   	
                  if((a1.equals(""))||(a2.equals(""))||(a3.equals(""))||(a4.equals(""))||(a5.equals(""))&&(a6.equals(""))||(a7.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                     rs.forward(request, response); 
              }else{
                 ResultSet rst=smt.executeQuery("Select * from doctor where  did='"+a1+"'");
                 if(rst.next()){
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "USerName ");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                 }else{
               	System.out.println("insert into doctor values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a1+"','"+a2+"','"+a8+"')");
	      int v=smt.executeUpdate("insert into doctor values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a1+"','"+a2+"','"+a8+"')");
                if(v==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Successfully stored");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                }}}
             }else if(request.getParameter("delete")!=null){
                      int k1 = smt.executeUpdate("delete from doctor where did='"+a1+"'");
                       if(k1==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Deleted Successfully");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                }
                }                 
                else if(request.getParameter("search")!=null){
                      ResultSet rs=smt.executeQuery("select * from doctor where did='"+a1+"' ");
			
			if(rs.next())
			{
				       s1 = rs.getString(1);
					s2 =rs.getString(2);
					s3 =rs.getString(3);
					s4 = rs.getString(4);
					s5 = rs.getString(5);
					s6 =rs.getString(6);
				        s7 = rs.getString(7);
 
				
			}else{
                            s1="";
                            s2="";
                            s3="";
                            s4="";
                            s5="";
                            s6="";
                            s7="";
                        }

			request.setAttribute("ss", "1");
				request.setAttribute("ss1", "1");
				request.setAttribute("s1", s1);
				request.setAttribute("s2", s2);
				request.setAttribute("s3", s3);
			request.setAttribute("s4", s4);
				request.setAttribute("s5", s5);
				request.setAttribute("s6", s6);
                             request.setAttribute("s7", s7);
                       RequestDispatcher requestdispatcher = request.getRequestDispatcher("dregister.jsp");
			requestdispatcher.forward(request, response);

		
                
                }
              
		
              
                else{
                          
                
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("dregister.jsp");
                    rs.forward(request, response);
                }
                 
        }catch(Exception e){
            e.printStackTrace();
        }  finally {            
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
