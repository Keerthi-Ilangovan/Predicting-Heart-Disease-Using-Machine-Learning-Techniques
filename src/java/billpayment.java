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
import javax.servlet.http.HttpSession;

/**
 *
 * @author perumal s
 */
public class billpayment extends HttpServlet {

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
          
            String a1=request.getParameter("a1");
             String a2=request.getParameter("a2");
                         String a3=request.getParameter("a3");
                           
                         
                         
 String s1 = null;
		String s2 = null;
		String s3 = null;
                                         
 String s4 = null;
		String s5 = null;
		String s6 = null;                         
 String s7 = null;
		String s8 = null;
                        

	

                int v=0,v1=0,v2=0,v3=0,v4=0,v5=0,v6=0,v7=0;
             
		
  
            if(request.getParameter("View")!=null){
                  Connection con = null;
            String url = "jdbc:mysql://localhost:3306/phrs";
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
            con = (Connection) DriverManager.getConnection(url, "root", "root");
              Statement smt = con.createStatement();
            Statement smt1 = con.createStatement();
            Statement smt2 = con.createStatement();
            Statement smt3 = con.createStatement();
                  ResultSet rs=smt.executeQuery("SELECT * FROM register where tid='"+a3+"'");
				System.out.println("SELECT * FROM register where tid='"+a3+"'");
                
			if(rs.next())
			{
                        
				s1 = rs.getString(1);
                                s2 = rs.getString(2);
		
			}
                      ResultSet rs1=smt1.executeQuery("SELECT sum(cost) FROM dpharmacy where date between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
				System.out.println("SELECT sum(cost) FROM dpharmacy where date between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
                      
			if(rs1.next())
			{
                            v2=Integer.parseInt(rs1.getString(1));
			     s3 = v2+"";
			
			}else{
                            v2=0;
                        }
                            ResultSet rs2=smt2.executeQuery("SELECT sum(cost) FROM dtest where date between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
			System.out.println("SELECT sum(cost) FROM dtest where date between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
			if(rs2.next())
			{
                                v3=Integer.parseInt(rs2.getString(1));
				     s4 = v3+"";
			System.out.print(v3);
			}else{
                            v3=0;s3="";
                        }
                      ResultSet rs4=smt3.executeQuery("SELECT sum(room) FROM token where doa between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
			 	System.out.println("SELECT sum(room) FROM token where doa between '"+a1+"' and '"+a2+"' and tid='"+a3+"'");
			if(rs4.next())
			{
                          
				v =Integer.parseInt(rs4.getString(1));
                                
                        }else{
                            v=0;
                        }
                      v4=(v*300);
                      v5=(v*200);
                    s5=v4+"";
                     s6=v6+"";
                        s7=v5+"";
                    s8=(v2+v3+v4+v5)+"";
                    	System.out.println("PID"+s1);
                        System.out.println("Name"+s2);
                        	System.out.println("Test"+s3);
                        System.out.println("Pharmacy"+s4);
                                   	System.out.println("sdsdds"+v);
                                        System.out.println("Room"+s5);
                                        System.out.println("dddd"+s6);
                        	System.out.println("Doctor"+s7);
                        System.out.println("Total"+s8);
			request.setAttribute("ss", "1");
                              request.setAttribute("a1", a1);  
                                 request.setAttribute("a2", a2);  
                                  request.setAttribute("a3", a3); 
				request.setAttribute("ss1", "1");
				request.setAttribute("s1", s1);
				request.setAttribute("s2", s2);
				request.setAttribute("s3", s3);
			request.setAttribute("s4", s4);
                         request.setAttribute("s5", s5);   
                             request.setAttribute("s6", s6);  
                                 request.setAttribute("s7", s7);  
                                  request.setAttribute("s8", s8); 
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("billpayment.jsp");
			requestdispatcher.forward(request, response);
             
                }else  if(request.getParameter("Download")!=null){
                    request.setAttribute("a1", a1);  
                                 request.setAttribute("a2", a2);  
                                  request.setAttribute("a3", a3); 
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("bill_payment.jsp");
			requestdispatcher.forward(request, response);
                }             
            else {
                                    
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("billpayment.jsp");
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
