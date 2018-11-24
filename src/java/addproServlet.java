// Import required java libraries

import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.*;
import java.util.UUID;
import java.util.Random;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;

public class addproServlet extends HttpServlet {

    //private String storagePath = "G:\\DOCUMENTS\\MODULES\\WP\\DMart\\web\\product-data\\"; //Add the storage directory here. make sure the path ends with  '\\'
    private boolean isMultipart;
    private String filePath;
    private int maxFileSize = 500 * 1024;
    private int maxMemSize = 40 * 1024;
    private File file;
    
    //private String text = null;
    private String connectionURL = "jdbc:mysql://localhost/DMart";
    private String DB_USER = "root";
    private String DB_PASS = "root";
    private Connection connection = null;
    private Statement stmt = null;
    //private String uniqueFileName = null;
    private FileItem fi = null;
    
    public void init() {
        // Get the file location where it would be stored.
        filePath = "G:\\DOCUMENTS\\MODULES\\WP\\DMart\\web\\product-data\\";
    }

    /*public void init() {
        // Get the file location where it would be stored.
        filePath = storagePath;
    }*/
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {
        
        String name = "", description = "", price = "", category = "", brand = "", quantity = "", photo = "";
        UUID pid = UUID.randomUUID();
        // Check that we have a file upload request
        isMultipart = ServletFileUpload.isMultipartContent(request);
        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter();

        if (!isMultipart) {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Product upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<p>No file uploaded</p>");
            out.println("</body>");
            out.println("</html>");
            return;
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);

        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File(filePath));

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // maximum file size to be uploaded.
        upload.setSizeMax(maxFileSize);

        try {
            // Parse the request to get file items.
            List fileItems = upload.parseRequest(request);

            // Process the uploaded file items
            Iterator i = fileItems.iterator();

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");
            out.println("</head>");
            out.println("<body>");

            while (i.hasNext()) {
                FileItem fi = (FileItem) i.next();

                //if it is a file then:
                if (!fi.isFormField()) {
                    // Get the uploaded file parameters
                    String fieldName = fi.getFieldName();
                    String fileName = fi.getName();
                    String contentType = fi.getContentType();
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();
                    photo = fileName.substring(0, fileName.lastIndexOf(".")) + fileName.substring(fileName.lastIndexOf("."));

                    // Write the file
                    if (fileName.lastIndexOf("\\") >= 0) {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(filePath + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    
                    fi.write(file);
                    System.out.println("file written to: " + file.getAbsolutePath());
                    out.println("Uploaded Filename: " + fileName + "<br>");
                    //Part p = request.getPart("fname");
                    //p.write(filepath + fileName);
                    //file = new File(filePath);
                    //out.println("New file name = " + uniqueFileName + "<br>");
                    out.println("Uploaded file path: " + filePath + "<br>");
                    response.sendRedirect("ProductsList.jsp");

                } 
                //else if form item is a form field:
                else if (fi.isFormField()) {
                    /*out.println("<br>" + fi.getFieldName() + ": ");
                    out.println(fi.getString());*/

                    // get strings
                    if (fi.getFieldName().equals("pid")) {
                        pid = UUID.fromString(fi.getString());
                    } else if (fi.getFieldName().equals("name")) {
                        name = fi.getString();
                    } else if (fi.getFieldName().equals("description")) {
                        description = fi.getString();
                    } else if (fi.getFieldName().equals("quantity")) {
                        quantity = fi.getString();
                    } else if (fi.getFieldName().equals("category")) {
                        category = fi.getString();
                    } else if (fi.getFieldName().equals("brand")) {
                        brand = fi.getString();
                    } else if (fi.getFieldName().equals("price")) {
                        price = fi.getString();
                    } else if (fi.getFieldName().equals("image")) {
                        photo = fi.getString();
                    }
                }
                
            }
            out.println("<br>" + pid +" , "+ name +" , "+ description +" , "+ quantity +" , "+ category +" , "+ brand +" , "+ price +" , "+ photo);
            
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, DB_USER, DB_PASS);
            stmt = connection.createStatement();
            String query = "insert into products values ('" +pid+ "','" +name+ "','" +description+ "','" +quantity+ "','" +category+ "','" +brand+ "','" +price+ "','" +photo+ "')";
            System.err.println(query);
            int noOfRecordsAffected = stmt.executeUpdate(query);
            if (noOfRecordsAffected != 0) {
                fi.write(file);
                out.println("<br>Product added");
		response.sendRedirect("ProductsList.jsp");
            } else {
                out.println("<br>Failed to add product");
		response.sendRedirect("Add Products.jsp");                
            }
            out.println("</body>");
            out.println("</html>");

        } catch (Exception ex) {
            System.out.println(ex);
        //  response.sendRedirect("URL");
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        throw new ServletException("GET method used with "
                + getClass().getName() + ": POST method required.");
    }
}
