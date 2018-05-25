/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/changepassloginservlet"})
public class changepassloginservlet extends HttpServlet {

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
            out.println("<title>Servlet changepassloginservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet changepassloginservlet at " + request.getContextPath() + "</h1>");
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

List<String> errorMsgs=new ArrayList<String>();
PrintWriter out=response.getWriter();
Connection con = null;  
                    PreparedStatement stmt = null;
                    Statement statement=null;
            
           request.setAttribute("errorMsgs", errorMsgs);
            
            try {
                
                   String prevpassword=request.getParameter("ppass");
                    String newpassword=request.getParameter("npass");
            String conpassword=request.getParameter("cpass");
            HttpSession session= request.getSession();
                    String username=(String) session.getAttribute("f");
                    
            String password=(String) session.getAttribute("l");
                 
		
                 if(newpassword.length()==0)  {
		errorMsgs.add("Please enter the new password");
		}
		if(conpassword.length()==0)  {
		errorMsgs.add("Please enter the confirmed password");
		} 
                if(!password.contentEquals(prevpassword))  {
		errorMsgs.add("Invalid previous password");
		}
           
              if(!newpassword.contentEquals(conpassword))  {
		errorMsgs.add("The new password and confirmation does not match");
		}
//                if(!prevpassword.contentEquals(pword))  {
//		errorMsgs.add("Invalid previous password");
//		}
                
                if(!errorMsgs.isEmpty())  {
		RequestDispatcher view = request.getRequestDispatcher("changepassword.jsp");
		view.forward(request, response);
		return;
		}
                try{
                
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                    con =DriverManager.getConnection 
                    ("jdbc:sqlserver://localhost:1433;databaseName=Ras","sa","123");
                    //("jdbc:mysql://localhost:3306/library","root","");
                    stmt = con.prepareStatement("update Lecturer set password_=? where username=?");
                    stmt.setString(1, conpassword);
                    stmt.setString(2, username);
                    stmt.executeUpdate();
                    RequestDispatcher view = request.getRequestDispatcher("changepasssuccess.jsp");
		view.forward(request, response);
		return;
					
				}
		catch(SQLException e) {
		errorMsgs.add(e.getMessage());
			//dispatch to the ErrorPage
                 RequestDispatcher view = request.getRequestDispatcher("changepassword.jsp");
		e.printStackTrace();
		view.forward(request, response);					 }
	        catch(Exception e){
	        e.printStackTrace();
		}
			
            }
		//Handle any unexpected exceptions
		catch(RuntimeException e)  {
			errorMsgs.add(e.getMessage());
			//dispatch to the ErrorPage
			RequestDispatcher view = request.getRequestDispatcher("changepassword.jsp");
			view.forward(request, response);
	                }//END of try-catch block
	        //END of doPost method
        
        
        
    
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
