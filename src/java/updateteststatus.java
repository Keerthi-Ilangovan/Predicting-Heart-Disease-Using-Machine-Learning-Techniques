/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Perumal S
 */
public class updateteststatus extends HttpServlet {

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
       String Radio = request.getParameter("radiobutton");
		System.out.println("R"+Radio);
	String b = request.getParameter("b");
		String a11 = null;
		String a12 = null;
		String a13 = null;
		String a14 = null;
		String a15 = null;
		String a16 = null;
                 String f11="",f12="";
               String r1="",r2="",r3="",r4="",r5="";
                String st1="",st2="";
		try {
			int flag = 0;
 HttpSession so = request.getSession(true);
			String url = "jdbc:mysql://localhost:3306/phrs";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
                        Statement st11 = con.createStatement();
                        Statement st12 = con.createStatement();
			Statement st111 = con.createStatement();
Statement st13 = con.createStatement();
				if ("Save".equals(b)) {
				String a1 = request.getParameter("a1");
                                String a2 = request.getParameter("a2");
				String a3 = request.getParameter("a3");
                                String a4 = request.getParameter("a4");
                                String a5 = request.getParameter("a5");
				String a6 = request.getParameter("a6");
                                String a7 = request.getParameter("a7");
				String a8 = request.getParameter("a8");
				
				 if((a1.equals(""))||(a2.equals(""))||(a3.equals(""))||(a4.equals(""))||(a5.equals(""))||(a6.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs3=request.getRequestDispatcher("labtestview.jsp");
                     rs3.forward(request, response); 
              }else{ 
			ResultSet rs = st.executeQuery("select * from dtest");

				while (rs.next()) {
					if (a1.equalsIgnoreCase(rs.getString(1))) {
						flag = 1;
					}

				}ResultSet rs3 = st13.executeQuery("select * from doctor where did='"+so.getAttribute("un") +"' ");
				if(rs3.next()) {
                              
                                   r3=rs3.getString(1);
                                   r4=rs3.getString(2);
                                  r5=rs3.getString(6);
				} 
				if (flag == 1) {
                                    ResultSet rs11 = st11.executeQuery("select * from dtest where uid='"+a11+"'");
                              
		if(rs11!=null)
			{ 
                              while(rs.next())
		{
                    st1=rs.getString(4);
                            st2=rs.getString(5);
                }
                                Date date = new Date();
SimpleDateFormat sdf;
 SimpleDateFormat sdf1;
sdf1 = new SimpleDateFormat("yyyy-M-dd");
sdf = new SimpleDateFormat("yyyy-M-dd hh:mm:ss");
 f11=sdf.format(date); f12=sdf1.format(date);
//                                     File file = new File(a8);
//                    FileInputStream fis = new FileInputStream(file);
                                    Transaction transaction1 = new Transaction(st1, st2, 1000L);
  Transaction transaction2 = new Transaction(a1, a2, 1000L);
//        Transaction transaction3 = new Transaction(vname, vpass, 1000L);
//        Transaction transaction4 = new Transaction(vname, vpass, 150L);
int sts=0;
        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
  sts=st12.executeUpdate("insert into searchblock values('"+firstBlock.hashCode()+"','"+transaction1+"','" + r3 + "','" + r4 + "','" + r5 + "','" + a1+ "','"+a2+"','"+f11+"','"+f12+"','Lab Test information')");
					System.out.println("update dtest set LabPrescribed='"+ a4 + "',status='" + a6 + "',date1='"+ a5 + "' where pid='" + a1 + "' and name='" + a2 + "'");
		       PreparedStatement pstmt = con.prepareStatement("update dtest set status=?,labprescribed=?,ldate=? where lid=? and uid=?");

                    pstmt.setString(1, a6);
                    pstmt.setString(2, a7);
                    pstmt.setString(3, a5);
                   // pstmt.setString(4, file.getName());
                   
                     pstmt.setString(4, a1);
                    pstmt.setString(5, a2);
                    int i = pstmt.executeUpdate();

					if (i > 0) {

						request.setAttribute("ss", "1");
						request.setAttribute("msg",
								"Given Details are Updated Successfully");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("labtestview.jsp");
						requestDispatcher.forward(request, response);
					} else {
						request.setAttribute("ss", "1");
						request.setAttribute("msg",
								"Given Datas Are Not Updated ..!");
						RequestDispatcher requestDispatcher = request
								.getRequestDispatcher("labtestview.jsp");
						requestDispatcher.forward(request, response);
					}
				}}}
                                }else if ("View".equals(b)) {
                                    	System.out.println(Radio);
				// String Empid=request.getParameter("txtEmpID");
				ResultSet rs1 = st111.executeQuery("select * from dtest  where lid='"
								+ Radio + "'");
				while (rs1.next()) {
					a11 = rs1.getString(1);
					a12 = rs1.getString(5);
					a13 = rs1.getString(6);
				        a14 = rs1.getString(7);
				System.out.println(Radio+a11 +"SA               "+  a12 +"asassa        "+ a13);

				}
				request.setAttribute("ss1", "1");
				request.setAttribute("a11", a11);
				request.setAttribute("a12", a12);
				request.setAttribute("a13", a13);
					request.setAttribute("a14", a14);

					RequestDispatcher requestDispatcher = request
							.getRequestDispatcher("labtestview.jsp");
					requestDispatcher.forward(request, response);
			}else{
                            RequestDispatcher requestDispatcher = request
							.getRequestDispatcher("labtestview.jsp");
					requestDispatcher.forward(request, response);
                        }
		}

		catch (Exception e) {
			out.println(e);
		}
 finally {            
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
