<%@page import="java.util.ArrayList"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    ArrayList<String> cart = null;
    session = request.getSession(false);
    if (session.getAttribute("cartlist") != null) {
        cart = (ArrayList<String>) session.getAttribute("cartlist");
    }
    System.out.println("hhhhh");
    String db_url = "jdbc:mysql://localhost/DMart";
    String db_user = "root";
    String db_pass = "root";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(db_url, db_user, db_pass);
        Statement st = con.createStatement();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>

    </head>
    <body style="margin-top: 60px;">
        <div class="container-fluid">
            <div class="row">                
            </div><!-- end .row -->
        </div><!-- end .container-fluid -->
        <div class=”container-fluid”>
            <div class="row">
            </div>
        </div>

        <%
            for (int i = 0; i < cart.size(); i++) {
                String pid = cart.get(i);
                ResultSet rs = st.executeQuery("select * from products where pid='" + pid + "'");
                if (rs.next()) {
                    String id = rs.getString(1);
                    String name = rs.getString(2);
                    String description = rs.getString(3);
                    String quantity = rs.getString(4);
                    String category = rs.getString(5);
                    String brand = rs.getString(6);
                    String price = rs.getString(7);
                    String photo = rs.getString(8);

                    System.out.println(name + "," + id + "," + description + "," + price);
        %>
        <div class=”container-fluid”>
            <div class="row">
                <div class="col-xs-12">
                    …<div class="col-3" style="padding:2%;">
                        <div class="container">
                            <div class="col">
                                <img class="img-fluid" src="product-data/<%=photo%>" >
                            </div>
                        </div>
                        <div class="col-3" style="padding:2%;">
                            <h5><%=name%></h5>
                            <h6><%=brand%></h6>
                            <hr>
                            <h4>&#8377;<%=price%></h4>
                            <a href="#" class="btn btn-secondary">Remove Item</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--item row-->            
            <!--item row ends-->
            <%
                    }
                }
            %>


        </div>
        <div class="col-3" style="margin:2%;">
            <div class="container" style="padding:10%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                Subtotals
                <hr>
                <center><a href="#" class="btn btn-success btn-lg">Check Out</a></center>
            </div>
        </div>
    </div>
</div>

</body>


<%
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</html>
