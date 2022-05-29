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
public class dpass extends HttpServlet {

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
         String op=request.getParameter("a1");
		String np=request.getParameter("a2");
		String cp=request.getParameter("a3");
		String option=request.getParameter("Submit");
		 HttpSession so = request.getSession(true);
		String un=null;
		int flag=0;
		try {
			        
String sa=so.getAttribute("un").toString();
			String url = "jdbc:mysql://localhost:3306/covid";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			if(option!=null)
			{
				ResultSet rs = st.executeQuery("select * from doctor where uname='"+so.getAttribute("un") +"' and pass='"+op+"'");
				if(rs.next())					
				{
					 if(np.equals(cp)){
                                    if(np.equals(cp)){
					int k=st.executeUpdate("Update doctor set pass='"+np+"' where uname='"+so.getAttribute("un") +"'");
					if (k > 0) {

						request.setAttribute("ss", "1");
						request.setAttribute("msg",
								"Password Updated Successfully");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("dcpass.jsp");
						requestDispatcher.forward(request, response);
					} else {
						request.setAttribute("ss", "1");
						request.setAttribute("msg","Password Not Updated ..!");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("dcpass.jsp");
						requestDispatcher.forward(request, response);
					}}}else{
                                       request.setAttribute("ss", "1");
						request.setAttribute("msg","Password didnt Match ..!");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("dcpass.jsp");
						requestDispatcher.forward(request, response);
                                   }
					
				}else{
                                    request.setAttribute("ss", "1");
						request.setAttribute("msg","Password does not exist ..!");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("dcpass.jsp");
						requestDispatcher.forward(request, response);
                                }	
				System.out.println(un);
				System.out.println(np);
				if(flag==1)
				{
                                  
			}else
			{
				request.setAttribute("ss", "1");
				request.setAttribute("msg",
						"Password Not Exist");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("dcpass.jsp");
				requestDispatcher.forward(request, response);
			}
				
		}else {
                            request.setAttribute("ss", "1");
				request.setAttribute("msg",
						"Password Not Exist");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("dcpass.jsp");
				requestDispatcher.forward(request, response);
                        }
			
		}
		catch(Exception e)
		{
			System.out.println(e);
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
