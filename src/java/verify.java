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
public class verify extends HttpServlet {

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
                     
               
    Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
  
        String url = "jdbc:mysql://localhost:3306/covid";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();  Statement st2 = con.createStatement();  Statement st1 = con.createStatement();
            if(request.getParameter("s1")!=null){
         String a1=request.getParameter("a1");
               String a2=request.getParameter("a2");
                    String a3=request.getParameter("a3");
                    String a4=request.getParameter("a4");
       String a5=request.getParameter("a5");
               String a6=request.getParameter("a6");
                    String a7=request.getParameter("a7");
                    String a8=request.getParameter("a8");
                     String a9=request.getParameter("a9");
                    String a10=request.getParameter("a10");
                String a11=request.getParameter("a11");
               String a12=request.getParameter("a12");
                    String a13=request.getParameter("a13");
                    String a14=request.getParameter("a14");
       String a15=request.getParameter("a15");
               String a16=request.getParameter("a16");
        String dor=dateNow;
         HttpSession so = request.getSession(true);
             
     String b1="",b2="",b3="";
               String c1="Normal";
  
      
                    	   if((a2.equals("")))
                           {
                  request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("u1.jsp");
			requestdispatcher.forward(request, response);
              }
			else
				{
                       
                  ResultSet rs2 = st2.executeQuery("select * from register where uname='"+so.getAttribute("un1")+"' ");
				if (rs2.next()) {
                                 
				b1=rs2.getString(1);
                                b2=rs2.getString(4);

				} 
                                int vv=Integer.parseInt(a2);
                   if((a1.equals("Male"))||(vv<50)){
                       if((a3.equals("Past"))||(a4.equals("Yes"))||(a5.equals("Past"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Past"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                           c1="Very High";
                       }else if((a3.equals("Current"))||(a4.equals("Yes"))||(a5.equals("Current"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Current"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                            c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("Yes"))||(a5.equals("Never"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Never"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                                c1="Normal";
                       }else if((a3.equals("Past"))||(a4.equals("No"))||(a5.equals("Past"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Past"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                               c1="High";
                       }else if((a3.equals("Current"))||(a4.equals("No"))||(a5.equals("Current"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Current"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                               c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("No"))||(a5.equals("Never"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Never"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                               c1="Normal";
                       }
                       
                   }else if((a1.equals("Male"))||((vv>50))){
                       if((a3.equals("Past"))||(a4.equals("Yes"))||(a5.equals("Past"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Past"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                           c1="Very High";
                       }else if((a3.equals("Current"))||(a4.equals("Yes"))||(a5.equals("Current"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Current"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                            c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("Yes"))||(a5.equals("Never"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Never"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                                c1="High";
                       }else if((a3.equals("Past"))||(a4.equals("No"))||(a5.equals("Past"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Past"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                               c1="High";
                       }else if((a3.equals("Current"))||(a4.equals("No"))||(a5.equals("Current"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Current"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                               c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("No"))||(a5.equals("Never"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Never"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                               c1="High";
                       }
                   }else if((a1.equals("Female"))||(vv<50)){
                       if((a3.equals("Past"))||(a4.equals("Yes"))||(a5.equals("Past"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Past"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                           c1="Very High";
                       }else if((a3.equals("Current"))||(a4.equals("Yes"))||(a5.equals("Current"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Current"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                            c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("Yes"))||(a5.equals("Never"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Never"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                                c1="Normal";
                       }else if((a3.equals("Past"))||(a4.equals("No"))||(a5.equals("Past"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Past"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                               c1="High";
                       }else if((a3.equals("Current"))||(a4.equals("No"))||(a5.equals("Current"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Current"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                               c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("No"))||(a5.equals("Never"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Never"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                               c1="Normal";
                       }
                       
                   }else if((a1.equals("Female"))||((vv>50))){
                       if((a3.equals("Past"))||(a4.equals("Yes"))||(a5.equals("Past"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Past"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                           c1="Very High";
                       }else if((a3.equals("Current"))||(a4.equals("Yes"))||(a5.equals("Current"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Current"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                            c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("Yes"))||(a5.equals("Never"))||(a6.equals("Yes"))||(a7.equals("Yes"))||(a8.equals("Never"))||(a9.equals("Yes"))||(a10.equals("Yes"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                                c1="High";
                       }else if((a3.equals("Past"))||(a4.equals("No"))||(a5.equals("Past"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Past"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("VeryHigh"))||(a12.equals("High"))||(a13.equals("High"))||(a14.equals("High"))){
                               c1="High";
                       }else if((a3.equals("Current"))||(a4.equals("No"))||(a5.equals("Current"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Current"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("High"))||(a12.equals("Normal"))||(a13.equals("Normal"))||(a14.equals("Normal"))){
                               c1="High";
                       }else if((a3.equals("Never"))||(a4.equals("No"))||(a5.equals("Never"))||(a6.equals("No"))||(a7.equals("No"))||(a8.equals("Never"))||(a9.equals("No"))||(a10.equals("No"))||(a11.equals("Normal"))||(a12.equals("Low"))||(a13.equals("Low"))||(a14.equals("Low"))){
                               c1="High";
                       }
                   }
                         System.out.println(c1);
//                                         String sid="UID"+tid3;
         //  int v=st.executeUpdate("insert into token values('"+tid1+"','"+sid+"','"+name+"','"+age+"','"+address+"','"+patient+"','"+room+"','"+dor+"','"+dat+"','"+reason+"','"+a1+"','"+a2+"','','')");
                    ps = (PreparedStatement) con.prepareStatement("Insert into verify values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, b1);
                    ps.setString(2, b2);
                    ps.setString(3, a1);
                    ps.setString(4, a2);
                    ps.setString(5, a3);
                    ps.setString(6, a4);
                    ps.setString(7, a5);
                    ps.setString(8, a6);
                    ps.setString(9, a7);
                    ps.setString(10, a8);
                    ps.setString(11, a9);
                    ps.setString(12, a10);
                    ps.setString(13, a11);
                    ps.setString(14, a12);
                    ps.setString(15, a13);
                    ps.setString(16, a14);
                        ps.setString(17, c1);
                    int j=ps.executeUpdate();
                if((j==1))  {
                      System.out.println(c1);
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Verified Successfully");
                               
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("t1.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Not inserted");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("t.jsp");
                    requestdispatcher.forward(request, response);}
                               
        
        }}}catch(Exception e){
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
