/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(urlPatterns = {"/frontpanelloginservlet"})
public class frontpanelloginservlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet frontpanelloginservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet frontpanelloginservlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
//        processRequest(request, response);
HttpSession session= request.getSession();
PrintWriter out=response.getWriter();
                  
                    String f=request.getParameter("user");
                    String l=request.getParameter("pass");
                    session.setAttribute("f", f);
                   session.setAttribute("l", l);
            try {
                    
                    List<String> errorMsgs=new ArrayList<String>();
                    Connection con = null;  
                    PreparedStatement stmt = null;
                    ResultSet rs = null;
                        //send the ErrorPage view.
                    request.setAttribute("errorMsgs", errorMsgs);
                
                
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    con =DriverManager.getConnection 
                    ("jdbc:sqlserver://localhost:1433;databaseName=Ras","sa","123");
                    //("jdbc:mysql://localhost:3306/library","root","");
                    stmt = con.prepareStatement("select * from Lecturer where username = ? and password_ = ?");
                    stmt.setString(1, f);
                    stmt.setString(2, l);
                    rs = stmt.executeQuery();
                    String id = null;

                    if(rs.next()){
                          id= rs.getString(1);

                    }else{
                            errorMsgs.add("Invalid username or password");
                            //return;
                    }
                
                       //Send the ErrorPage view if there were errors
             if(!errorMsgs.isEmpty())  {
                           RequestDispatcher view = request.getRequestDispatcher("login.jsp");
                           view.forward(request, response);
                           return;
                   }
             //send the success view
            RequestDispatcher view = request.getRequestDispatcher("lecturersection.jsp");
                           view.forward(request, response);
                           return;
                           
                        
                       
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       
   
            } catch (Exception e) {
                
                
                
            }

        
        
        
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
