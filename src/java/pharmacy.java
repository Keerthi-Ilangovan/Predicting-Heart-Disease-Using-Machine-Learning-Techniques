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
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kumar s
 */
public class pharmacy extends HttpServlet {

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
              Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/phrs";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
                 Statement smt=con.createStatement();
            String a1=request.getParameter("a1");
             String a2=request.getParameter("a2");
                         String a3=request.getParameter("a3");
                           String a4=request.getParameter("a4");
            
                         
                         
 String s1 = null;
		String s2 = null;
		String s3 = null;
                                         
 String s4 = null;
		String s5 = null;
		String s6 = null;                         
String s7 = null;    
		ArrayList al=new ArrayList();

               
  
             if(request.getParameter("Add")!=null){
               	System.out.println("insert into pharmacy values('" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "')");
	      int v=smt.executeUpdate("insert into pharmacy values('" +a1 + "','" + a2 + "','" + a3 + "','" + a4 + "')");
                if(v==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Successfully stored");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }
             }else if(request.getParameter("update")!=null){
                 int k = smt.executeUpdate("update pharmacy set medicine='"+a2+"',describtion='"+a3+"',amount='"+a4+"'where pid='"+a1+"'");
                       if(k==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Updated Successfully ");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }
                    
                }else if(request.getParameter("delete")!=null){
                      int k1 = smt.executeUpdate("delete from pharmacy where pid='"+a1+"'");
                       if(k1==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Deleted Successfully");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }
                }                 
                else if(request.getParameter("search")!=null){
                      ResultSet rs=smt.executeQuery("select * from pharmacy where pid='"+a1+"' ");
			
			if(rs.next())
			{
				         s1 =rs.getString(1);
					s2 = rs.getString(2);
					s3 =rs.getString(3);
					s4 = rs.getString(4);
					

				
			}else{
                            s1="";
                            s2="";
                            s3="";
                            s4="";
                        }

			request.setAttribute("ss", "1");
				request.setAttribute("ss1", "1");
				request.setAttribute("s1", s1);
				request.setAttribute("s2", s2);
				request.setAttribute("s3", s3);
			request.setAttribute("s4", s4);
			
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("pharmacydescribtion.jsp");
			requestdispatcher.forward(request, response);

		
                
                }
              
		
              
                else{
                          
                
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("pharmacydescribtion.jsp");
                    rs.forward(request, response);
                }
                 
        }catch(Exception e){
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
