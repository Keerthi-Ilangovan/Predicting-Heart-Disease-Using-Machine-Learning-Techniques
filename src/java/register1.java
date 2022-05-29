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
import javax.servlet.http.HttpSession;

/**
 *
 * @author perumal s
 */
public class register1 extends HttpServlet {

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
                       int randomInt = 0;
                  Random randomGenerator = new Random();
                for (int idx = 1; idx <= 10; ++idx) {
                    randomInt = randomGenerator.nextInt(1000);

                }
        Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
        String url = "jdbc:mysql://localhost:3306/phrs";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();     Statement st1 = con.createStatement();     Statement st2 = con.createStatement();
            if(request.getParameter("Save")!=null){
                    String uid=null;
         String name=null;
        String age=null;
             String mobile=null;
        String email=null;
        String dob=request.getParameter("dob");
        String reason=request.getParameter("reason");
        String address=request.getParameter("address");
        String patient=request.getParameter("patient");
        String room=request.getParameter("room");
        String dor=request.getParameter("dob1");
    int tid=0,tid1=0,tid2=0;
           String dat="sat";
               HttpSession so=request.getSession(true);
                    	   if((reason.equals(""))||(patient.equals(""))){
                  request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
			requestdispatcher.forward(request, response);
              }
			else
				{
                                      System.out.println( so.getAttribute("un") );
                                   ResultSet rs1 = st1.executeQuery("select * from register where uname='"+ so.getAttribute("un") + "'");
				while (rs1.next()) {
					uid = rs1.getString(1);
					name = rs1.getString(2);
					age = rs1.getString(3);
				        address= rs1.getString(4);
                                        mobile = rs1.getString(13);
				        email= rs1.getString(14);
				  System.out.println("Now the date is :=>  " + uid);
                                    System.out.println("Now the date is :=>  " + name);
                                      System.out.println("Now the date is :=>  " + age);
                                        System.out.println("Now the date is :=>  " + dateNow);

				} 
                                
                                   System.out.println("insert into token values('"+randomInt+"','"+uid+"','"+name+"','"+age+"','"+address+"','"+patient+"','"+room+"','"+dor+"','"+dat+"','"+reason+"'");
                                        ResultSet rs2 = st2
			.executeQuery("select max(tkid) from token ");
				while (rs2.next()) {
					tid =Integer.parseInt( rs2.getString(1));
					tid1=tid+1;
				

				} 
                    
//        int v=st.executeUpdate("insert into token values('"+tid1+"','"+uid+"','"+name+"','"+age+"','"+address+"','"+enc.toEncrypt(patient.getBytes())+"','"+room+"','"+enc.toEncrypt(dor.getBytes())+"','"+enc.toEncrypt(dat.getBytes())+"','"+enc.toEncrypt(reason.getBytes())+"','"+mobile+"','"+email+"','','','')");
 int v=st.executeUpdate("insert into token values('"+tid1+"','"+so.getAttribute("un") +"','"+name+"','"+age+"','"+address+"','"+patient+"','"+room+"','"+dor+"','"+dat+"','"+reason+"','"+mobile+"','"+email+"','','')");
            
                if((v==1))  {

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Account Registered Successfully");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Password didnot match");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("tokenbooking.jsp");
                    requestdispatcher.forward(request, response);}
                               
        
 
            }
            
  }
    }
catch(Exception e){
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
