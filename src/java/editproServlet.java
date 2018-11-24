/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class editproServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String connectionURL = "jdbc:mysql://localhost/DMart";
        Connection connection = null;
        Statement stmt = null;
        String SRollno = request.getParameter("Rollno");
        String SAddress = request.getParameter("Address");
        int count = 0;
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String pid = request.getParameter("pid");
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "root");
            stmt = connection.createStatement();
            int i = stmt.executeUpdate("UPDATE products SET name= ?,description= ?,quantity= ?,category= ?,brand= ?,price= ?,photo= ? WHERE pid = ? ");
//              ps.setString(1,SAddress);
//              ps.setString(2,SRollno);
            
            String st = "select * from products";
            ResultSet rs = stmt.executeQuery(st);
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Retrive All the Records</title>");            
            out.println("</head>");
            out.println("<body bgcolor=lightyellow>");
            out.println("<br>");
            out.println("<hr>");
            out.println("All The Records and   : ");
            out.println("Record Hasbeen Updated");
            out.println("<hr>");
            //out.println("Product ID" + " " + "ProductNAME" +" " + "LAST NAME"+" " + "ADDRESS 1"+" " + "ADDRESS2"+" " + "TOWN"+" " + "COUNTRY"+" " + "ZIPCODE"+ "<br>");
            out.println("<hr>");            
            out.println("<br>");
            //System.out.println("rollno form data: "+SRollno);
            //System.out.println("Address form data: "+SAddress);
            while (rs.next()) {
                out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " " + rs.getString(5) + " " + rs.getString(6) + " " + rs.getString(7) + " " + rs.getString(8) + "<br>");
                count++;
                response.sendRedirect("editproduct.jsp");
            }
            
            connection.close();
            
        } catch (Exception e) {
            out.println(e);
        }
        out.println("<br>");
        
        out.println("</body>");
        out.println("</html>");
    }
    
}
