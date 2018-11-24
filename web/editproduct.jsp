<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<!doctype html>
<html lang="en">
    <jsp:include page="Admin_header.jsp" />

    <body style="background-color: lightyellow">
        <%
                            String connectionURL = "jdbc:mysql://localhost/DMart";
                            Connection connection = null;
                            Statement stmt = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                connection = DriverManager.getConnection(connectionURL, "root", "root");
                                String pid = request.getParameter("pid");
                                stmt = connection.createStatement();
                                String query = "select * from products where pid = '"+pid+"'";
                                ResultSet rs = stmt.executeQuery(query);
                                if (rs.next()) {
                                    String name = rs.getString("name");
                                    String description = rs.getString("description");
                                    String quantity = rs.getString("quantity");
                                    String category = rs.getString("category");
                                    String brand = rs.getString("brand");
                                    String price = rs.getString("price");
                                    String photo = rs.getString("photo");
                        %>
        <div class="container">
            <div class="col">
                <div class="col-sm-4 col-xs-4 offset-sm-4 offset-xs-4">
                    <h2>Edit Products Form</h2>
                    <form action="editproServlet" method=get>
                        <div class="form-group">
                            <label for="name" style="color: midnightblue;">Product Name:</label>
                            <input type="text" class="form-control" id="name" value="<%=name%>" name="name">
                        </div>
                        <div class="form-group">
                            <label for="description" style="color: midnightblue;">Product Description:</label>
                            <textarea class="form-control" id="description" value="<%=description%>" name="description" rows="2" cols="30"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="quantity" style="color: midnightblue;">Product Quantity:</label>
                            <input type="number" class="form-control" id="quantity" pattern="[0-9]" value="<%=quantity%>" name="quantity">
                        </div>
                        <div class="form-group inputDnD">
                            <label for="image" style="color: midnightblue;">File Upload:</label>
                            <input type="file" class="form-control text-success font-weight-bold" id="fileUpload" accept="image/*" onchange="readUrl(this)" name="image" data-title="Drag and drop a file">
                        </div>
                        <div class="form-group">
                            <label for="category" style="color: midnightblue;">Category</label>
                            <select class="form-control" id="category" name="category" value="<%=category%>">
                                <OPTION Value="none">Select None</OPTION>
                                <OPTION Value="electronics">Electronics</OPTION>
                                <OPTION Value="appliances">TV's & Appliances</OPTION>
                                <OPTION Value="men">Men</OPTION>
                                <OPTION Value="women">Women</OPTION>
                                <OPTION Value="kids">Baby & Kids</OPTION>
                                <OPTION value="furniture">Home & Furniture</OPTION>
                                <OPTION value="sports_books">Sports, Books & More</OPTION>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="brand" style="color: midnightblue;">Brand:</label>
                            <input type="text" class="form-control" id="brand" value="<%=brand%>" name="brand">
                        </div>
                        <div class="form-group">
                            <label for="price" style="color: midnightblue;">Product Price:</label>
                            <input type="number" class="form-control" id="price" value="<%=price%>" name="price">
                        </div>
                        <div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </div><br>
                    </form>
                </div>
            </div>
        </div>
                <%
                            }
                    }catch (Exception e) {
                        out.println(e);
                    } finally {
                        out.close();
                        //stmt.close();
                        //connection.close();
                    }
                %>
    </body>
</html>
