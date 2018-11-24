<!DOCTYPE html>
<html lang="en">
    <head>
        <%@page import="java.io.*,java.util.*,java.sql.*"%>
        <%@page import="javax.servlet.http.*,javax.servlet.*" %>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.DriverManager"%>

        <%
            String db_url = "jdbc:mysql://localhost/DMart";
            String db_user = "root";
            String db_pass = "root";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(db_url, db_user, db_pass);
                Statement st = con.createStatement();
                String pid = request.getParameter("pid");
                String sql = "select * from products where pid='" + pid + "'";
                System.out.println(sql);
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
        %>
        <title><%=rs.getString("name")%> | DMart</title>
        <jsp:include page="User_header.jsp" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .checked {
                color: orange;
            }
        </style>
    </head>
    <body style="background-color: lightyellow">       
        <div class="row">
            <div class="col-md" style="padding: 2%;">
                <div class="container">
                    <center>
                        <img class="img-fluid" src="product-data/<%=rs.getString(8)%>" style="width: 400px; height: 400px;">
                    </center>
                </div>
                <div class="row">
                    <div class="col">
                        
                    </div>
                    <div class="col-12">                                        
                        <a href="" class="btn btn-primary btn-lg" style="margin: 5%;">Add to Wishlist <span class="fa fa-heart"></span></a>                    
                        <a href="addcartServlet?pid=<%=rs.getString(1)%>" class="btn btn-primary btn-lg" style="margin: 5%;">Add to Cart <span class="fa fa-shopping-cart"></span></a>                                      
                    </div>
                </div>

            </div>
            <div class="col-md" style="padding: 5%;">
                <div class="container">
                    <h1><%=rs.getString(2)%></h1>
                    <!--<h3>Brand:</h3>-->
                    <p><b><%=rs.getString(6)%></b></p>
                    <h2>&#8377;<%=rs.getString(7)%></h2>
                    <hr>
                    <p><%=rs.getString(5)%></p>
                    <h6>Quantity : <%=rs.getString(4)%></h6>                    
                    <h5>Description:</h5>
                    <p class="col-6"><%=rs.getString(3)%></p>
                    <hr>
                    <!--<h4>Rating:</h4>-->
                    <%
                        int rat = Integer.parseInt(rs.getString(6));
                        for (int i = 0; i < rat; i++) {
                            out.println("<span class='fa fa-star checked'></span>");
                        }
                        for (int i = 0; i < 5 - rat; i++) {
                            out.println("<span class='fa fa-star'></span>");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>

<%               }
    } catch (Exception e) {
        System.out.println(e);

    }
%>