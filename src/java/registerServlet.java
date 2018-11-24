import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class registerServlet extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String connectionURL = "jdbc:mysql://localhost/flipkart";
		Connection connection = null;
		Statement stmt = null;
		try
		{	
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String mobile = request.getParameter("mobile");
			pw.println(name);
			pw.println(password);
			pw.println(email);
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			stmt = connection.createStatement();
			String query = "insert into users values ('"+name+"','"+email+"','"+password+"','"+mobile+"')";
			int i =stmt.executeUpdate(query);
			if(i!=0)
			{
					pw.println("<br>Data has been inserted in to Datebase");
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