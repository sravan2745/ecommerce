<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<head>
    <title>Electronics - Buy Products Online At Best Price In India | DMart</title>
</head>
<jsp:include page="User_header.jsp" />
<!DOCTYPE html>
<html lang="en">
    <%
        String db_url = "jdbc:mysql://localhost/DMart";
        String db_user = "root";
        String db_pass = "root";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(db_url, db_user, db_pass);
            Statement st = con.createStatement();
            String sql = "select * from products";
            ResultSet rs = st.executeQuery(sql);
    %>
    

    <body style="background-color: lightyellow;">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <!-- sidebar (side navbar) for ls-->
                    <nav class="navbar bg-light">
                        <!-- Links -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <h6 class="navbar-brand" style="color: midnightblue;">Filters <img id="filter-icon" src="https://cdn3.iconfinder.com/data/icons/gray-toolbar-2/512/filter_stock_funnel_filters-512.png" style="width: 20px; height: 20px;"><button type="reset" class="btn btn-light">Reset</button></h6>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Filter 1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Filter 2</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Filter 3</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col">
                    <div class="container justify-content-center">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <h6 style="padding-top: 10px;">Sort by &nbsp;</h6>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Popularity</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Price - Low to High</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Price - High to Low</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Newest First</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Discount</a>
                            </li>
                        </ul>
                    </div>

                    <div class="row" style="margin-top: 10px;">
                        <%
                            while (rs.next()) {
                        %>
                        <div class="col-3" >
                            <div class="card" style="margin:2%; height: 400px; width: 175px;">
                                <div style="display: block">
                                    <img class="card-img-top img-thumbnail" src="product-data/<%=rs.getString(8)%>" alt="image" style="width: 100%; height: 175px;">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title"><%=rs.getString(2)%></h5>
                                    <!--<p class="card-text" style="font-weight: 60"><%=rs.getString(3)%></p>-->
                                    <p class="card-text"><%=rs.getString(6)%></p>
                                    <p class="card-text" style="color: navy;"><b>Price &#8377; <%=rs.getString(7)%></b> </p>
                                    <a href="product_display.jsp?pid=<%=rs.getString("pid")%>" class="btn btn-primary">View Product</a>
                                </div>
                            </div>
                        </div>
                        <% }
                        %>

                        <%
                            } catch (Exception e) {
                                System.out.println(e);

                            }
                        %>
</body>
</html>
