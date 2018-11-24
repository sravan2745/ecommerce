<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<!doctype html>

<html lang="en">
    <jsp:include page="Admin_header.jsp" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });

    </script>
    <body style="background-color: lightyellow;">
        <main role="main" class="container-fluid">
            <div class="container-fluid">
                <br>
                <h2>Products List</h2>
                <div class="container-fluid">
                    <div class="row ">
                        <div class="col">
                            <p>Manage Products</p>
                        </div>
                        <div class="col col-lg-2">
                            <a href="Add Products.jsp" style="float: right;" class="btn btn-primary">Add Product</a>
                        </div> 

                        <input id="myInput" type="text" placeholder="Search..">
                    </div>
                </div>            
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Quantity</th>
                            <th>Category</th>
                            <th>Brand</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Edit/Delete</th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <%
                            String connectionURL = "jdbc:mysql://localhost/DMart";
                            Connection connection = null;
                            Statement stmt = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                connection = DriverManager.getConnection(connectionURL, "root", "root");
                                stmt = connection.createStatement();
                                String query = "select * from products";
                                ResultSet rs = stmt.executeQuery(query);
                                while (rs.next()) {
                                    String pid = rs.getString("pid");
                                    String name = rs.getString("name");
                                    String description = rs.getString("description");
                                    String quantity = rs.getString("quantity");
                                    String category = rs.getString("category");
                                    String brand = rs.getString("brand");
                                    String price = rs.getString("price");
                                    String photo = rs.getString("photo");
                        %>
                        <tr>
                            <td><%=pid%></td>
                            <td><%=name%></td>
                            <td><%=description%></td>
                            <td><%=quantity%></td>
                            <td><%=category%></td>
                            <td><%=brand%></td>
                            <td><%=price%></td>
                            <td><img src="product-data\<%=photo%>" style="height: 30px"></td>
                            <td>
                                <a href="editproduct.jsp?pid=<%=pid%>">Edit</a>
                                &nbsp;
                                <a href="deleteproServlet?pid=<%=pid%>">Delete</a>
                            </td>
                        </tr>     
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </main>
        <!-- /.container -->

        <%
            } catch (Exception e) {
                out.println(e);
            } finally {
                out.close();
                //stmt.close();
                //connection.close();
            }
        %>

    </body>    
</html>
