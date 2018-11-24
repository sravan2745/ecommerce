import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class signupServlet extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String connectionURL = "jdbc:mysql://localhost/DMart";
        Connection connection = null;
        Statement stmt = null;
        try
        {	
            String email = request.getParameter("email");
            String first_name = request.getParameter("fname");
            String last_name = request.getParameter("lname");
            String mobile = request.getParameter("mob");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("Gender");
            String security_question = request.getParameter("secques");
            String answer = request.getParameter("sanswer");
            String password = request.getParameter("pwd");
            String confirm_password = request.getParameter("cpwd");
            String role = request.getParameter("role");

            pw.println("<html>");
            pw.println("<head>");
            pw.println("</head>");
            pw.println("<body>");
            pw.println("<table border='1' width='100%'>");
            pw.println("<tr><th>Email</th><th>First Name</th><th>Last Name</th><th>Mobile</th><th>Date of Birth</th><th>Gender</th><th>Security Question</th><th>Answer</th><th>Password</th><th>Confirm Password</th><th>Role</th><th>Edit</th><th>Delete</th></tr>"); 
            pw.println("<tr>");
            pw.println("<th>"+email+"</th>");
            pw.println("<th>"+first_name+"</th>");
            pw.println("<th>"+last_name+"</th>");
            pw.println("<th>"+mobile+"</th>");
            pw.println("<th>"+dob+"</th>");
            pw.println("<th>"+gender+"</th>");
            pw.println("<th>"+security_question+"</th>");
            pw.println("<th>"+answer+"</th>");
            pw.println("<th>"+password+"</th>");
            pw.println("<th>"+confirm_password+"</th>");
            pw.println("<th>"+role+"</th>");
            pw.println("</tr>");
            pw.println("</table>");
            pw.println("</body>");
            pw.println("</html>");

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "root");
            stmt = connection.createStatement();
            String query = "insert into users values ('"+email+"','"+first_name+"','"+last_name+"','"+mobile+"','"+dob+"','"+gender+"','"+security_question+"','"+answer+"','"+password+"','"+confirm_password+"','"+role+"')";
            int i = stmt.executeUpdate(query);
            if(i!=0)
            {
                pw.println("<br>Data has been inserted into Datebase");
            }
            else
            {
                pw.println("failed to insert the data");
            }
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