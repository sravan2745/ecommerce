/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sravs
 */
public class passwordreset extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
            doPost(request,response);
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
    {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String connectionURL = "jdbc:mysql://localhost/DMart";
        Connection connection = null;
        Statement stmt = null;
        try
        {	
            String email = request.getParameter("email");
            pw.println("Email is :"+email);
            String security_question = request.getParameter("secques");
            pw.println("Security Question :"+security_question);
            String answer = request.getParameter("sanswer");
           
            pw.println("Security Answer :"+answer);
            
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "root");
            stmt = connection.createStatement();
            String query = "select * from users where email='"+email+"' and security_question='"+security_question+"' and answer='"+answer+"'";

            ResultSet rs = stmt.executeQuery(query);

            if(rs.next())
            {
                pw.println("Succefully logged! Enter new password details");
                response.sendRedirect("New Password.jsp");
            }
            else
            {
                pw.println("failed! Please enter valid details...");
                //response.sendRedirect("./Password Reset.jsp?msg=fail");
            }

            rs.close();
            stmt.close();
        }
        catch (Exception e){
                pw.println(e);
        }
        finally
        {
            pw.close();
            //stmt.close();
            //connection.close();

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
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>

}
