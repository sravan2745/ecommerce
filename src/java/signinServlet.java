import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class signinServlet extends HttpServlet
{
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
            String password = request.getParameter("pwd");

            pw.println(email);
            pw.println(password);

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "root");
            stmt = connection.createStatement();
            String query = "select * from users where email='"+email+"' and password = '"+password+"'";

            ResultSet rs = stmt.executeQuery(query);

            if(rs.next())
            {
                HttpSession session = request.getSession(true);
                session.setAttribute("email", email);
                session.setAttribute("role", rs.getString("role"));
                if(rs.getString("role").equals("admin")){
                    response.sendRedirect("./admin_home.jsp");
                }
                else
                {
                    response.sendRedirect("product-page.jsp");
                }
                //response.sendRedirect("./admin_home.jsp");
            }
            else
            {
                pw.println("failed to login. Please enter valid details...");
                response.sendRedirect("./Login.jsp");
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
}