<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
    <jsp:include page="Admin_header.jsp" />

    <%    Class.forName("com.mysql.jdbc.Driver");
        String connectionURL = "jdbc:mysql://localhost/dmart";
        String DB_USER = "root";
        String DB_PASS = "root";
        Connection con = null;
        Statement s = null;
        try {
            con = DriverManager.getConnection(connectionURL, DB_USER, DB_PASS);
            s = con.createStatement();
            String query = "select * from products";
            ResultSet rs = s.executeQuery(query);
    %>

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
                    </div>
                </div>            
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
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
                    <tbody>
                        <%
                            while (rs.next()) {
                                String pid = rs.getString("pid");
                                String name = rs.getString("name");
                                String description = rs.getString("description");
                                String quantity = rs.getString("quantity");
                                String category = rs.getString("category");
                                String brand = rs.getString("brand");
                                String price = rs.getString("price");
                                String image = rs.getString(8);
                        %>
                        <tr>
                            <td><%=pid%></td>
                            <td><%=name%></td>
                            <td><%=description%></td>
                            <td><%=quantity%></td>
                            <td><%=category%></td>
                            <td><%=brand%></td>
                            <td><%=price%></td>
                            <td><img src="G:\DOCUMENTS\MODULES\WP\DMart\web\product-data\<%=image%>" style="height: 60px"></td>
                            <td>
                                <a href="editproduct.jsp">Edit</a>
                                &nbsp;
                                <a href="#">Delete</a>
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

    </body>
    <%
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            try {
                s.close();
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }

        }
    %>
