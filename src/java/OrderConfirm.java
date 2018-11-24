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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OrderConfirm extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet orderconfirm</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet orderconfirm at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doService(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        ArrayList<String> cart = null;
        HttpSession session = request.getSession(false);
        if (session.getAttribute("cartlist") != null) {
            cart = (ArrayList<String>) session.getAttribute("cartlist");
        }
        String db_url = "jdbc:mysql://localhost/Dmart";
        String db_user = "root";
        String db_pass = "root";
        Connection connection = null;
        Statement st = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(db_url, db_user, db_pass);
            st = connection.createStatement();
            String order_id = UUID.randomUUID().toString();
            int itemCount = (Integer) session.getAttribute("itemCount");
            double total = (Double) session.getAttribute("total");
            String email = (String) session.getAttribute("email");
//            String order_date = null;
//            String dispatch_date = null;
//            String delivery_date = null;
            String cartString = cart.toString();
            cartString = cartString.substring(1, cartString.length() - 1); //get substring to remove the square brackets.
            cartString = cartString.replace(" ", ""); //removed spaces generated by toString method.
            //TO-DO : get the date methods and generate date here.
            java.sql.Date order_date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
            String dt = "order_date";
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.MINUTE, 10);
            java.sql.Time dispatch_date = new java.sql.Time(cal.getTimeInMillis());
            System.out.println("Dispatch date : " + dispatch_date);
            cal.add(Calendar.MINUTE, 15);
            java.sql.Time delivery_date = new java.sql.Time(cal.getTimeInMillis());
            System.out.println("Recieve date :" + delivery_date);
            String status = "Order Placed"; //default status.
            String address = request.getParameter("address");
            String remarks = "none"; //default remarks. remarks are to be given upon delivery or order cancellation.

            String checkout = "insert into checkout(order_id,pid,quantity,totalamount) values('" + order_id + "','" + cartString + "','" + itemCount + "','" + total + "')";
            String order = "insert into orders(order_id,email,order_date,dispatch_date,delivery_date,totalamount,status,address,remarks) values('" + order_id + "','" + email + "','" + order_date + "','" + dispatch_date + "','" + delivery_date + "','" + total + "','" + status + "','" + address + "','" + remarks + "')";
            int i = st.executeUpdate(checkout);
            int j = st.executeUpdate(order);
            if (i > 0 && j > 0) {
                pw.println("Your Product Order Succesfully Placed");
                response.sendRedirect("Success.jsp");
                //redirect to order summary page.
            } else {
                pw.println("Products data need to be inserted");
                response.sendRedirect("Cart.jsp");
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OrderConfirm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OrderConfirm.class.getName()).log(Level.SEVERE, null, ex);
        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doService(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doService(request, response);
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