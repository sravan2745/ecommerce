import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class imageuploadServlet extends HttpServlet
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
			String photo = request.getParameter("image");
                        
            pw.println("<html>");
            pw.println("<head>");
            pw.println("</head>");
            pw.println("<body>");
            pw.println("<table border='1' width='100%'>");
            pw.println("<tr><th>Name</th><th>Description</th><th>Price</th><th>ManufactureDate</th><th>Warranty(months)</th><th>Photo</th><th>Category</th><th>Brand</th><th>Quantity</th><th>Edit</th><th>Delete</th></tr>"); 
            pw.println("<tr>");
            pw.println("<th>"+photo+"</th>");
            pw.println("</tr>");
            pw.println("</table>");
            pw.println("</body>");
            pw.println("</html>");
            
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			stmt = connection.createStatement();
			String query = "insert into products values ('"+photo+"')";
			int i = stmt.executeUpdate(query);
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