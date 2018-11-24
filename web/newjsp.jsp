<%@page import="java.util.ArrayList"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Double subtotal = 0.0;
    Double deliveryCharges = 0.0;
    Double tax = 0.0;
    Double totalAmount = 0.0;
    int itemcount = 0;
    
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
        <jsp:include page="User_header.jsp" />
    </head>
    <body style="background-color: lightyellow; margin-top: 15px; padding: auto">                   
        <div class="container-fluid">
            <div class="row">
                <div class="col" style=" margin: 2%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: activeborder;"">
                    <div class="row">
                        <div class="row" style="padding: 10px;">
                            <div class="col-12">
                                <h4 style="padding: 8px">MY CART(<%=itemcount%>)</h4>                               
                            </div>
                        </div>
                    </div><hr>

                    <%  for (int i = 0; i < cart.size(); i++) {
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
                    <!--item row-->
                    <div class="row" style="padding: 0%;">
                        <div class="col-3" style="padding: 0%;">
                            <div class="container" style="max-height:150px; max-width: 150px;">
                                <img class="img-fluid" src="product-data/<%=photo%>" style="max-height: inherit; max-width: inherit;">
                            </div>
                        </div>
                        <div class="col" style="padding:2%; ">
                            <h5><%=name%></h5>
                            <h6><%=brand%></h6>
                            <hr>
                            <h4>&#8377;<%=price%></h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-8 pull-right">
                                <a href="#" class="btn btn-secondary btn-lg" style="background-color: white; color: black;">MOVE TO WISHLIST</a>
                                <a href="#" class="btn btn-secondary btn-lg" style="background-color: white; color: black;">REMOVE</a><br>
                            </div>                            
                        </div>
                    </div><hr>
                    
                    <!--item row ends-->
                    <%
                            }
                            itemcount++;
                        }
                    %>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-md-6 pull-right">
                                <a href="#" class="btn btn-secondary btn-lg" style="background-color: white; color: black; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><span class="fa fa-chevron-left">&nbsp;</span>CONTINUE SHOPPING</a>
                                <a href="#" class="btn btn-lg" style="background-color: orange; color: white">PLACE ORDER</a><br>
                            </div>                            
                        </div>
                    </div><br>
                </div>
                <div class="col-3" style="margin: 2%;">
                    <div class="container-fluid" style="padding: 10%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); background-color: activeborder">
                        <div class="row">
                            <div class="col-12">
                                <h4 style="color: gray">PRICE DETAILS:</h4>
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <h6 class="col-md-9">Price</h6>
                            <p class="col-md-pull-9">&#8377;<span id="st"><%=subtotal%></span></p>
                        </div>
                        <div class="row">
                            <h6 class="col-md-9">Delivery Charges</h6>
                            <%
                                if (subtotal > 500) {
                                    deliveryCharges = 100.0;
                                }
                            %>
                            <p>&#8377;<span id="dc"><%=deliveryCharges%></span></p>
                            <!--<h6 class="col col-lg-2" style="color: green">FREE</h6>-->
                        </div><hr>
                         <%
                            tax = subtotal * 5 / 100;
                        %>
                        <div class="col-md" style="padding:2%;">
                            <h6>Tax:</h6>
                            <p>&#8377;<span id="tax"><%=tax%></span></p>
                        </div>
                        <hr>
                        <div class="col-md" style="padding:2%;">
                            <%
                                totalAmount = subtotal + deliveryCharges + tax;
                            %>
                            <h6>Amount Payable</h6>
                            <h6 class="col col-lg-2">&#8377;<span id="total"><%=totalAmount%></span></h6>
                        </div>
                        <!--<div class="row">
                            <h6 class="col-md-9">Amount Payable</h6>
                            <h6 class="col col-lg-2">&#8377;</h6>
                        </div><hr>-->
                        <center><a href="#" class="btn btn-primary btn-lg btn-block">Check Out</a></center>
                    </div>                          
                </div>
            </div>
        </div>
    </body>
    <script>
         function qtychange(itemNumber) {
                var quantity = document.getElementById("quantity" + itemNumber).value;
                var price = document.getElementById("price" + itemNumber).value;
                var subprice = qty * price;
                
                document.getElementById("subprice" + itemNumber).innerHTML = subprice;
                getTotals();
            }
            function getTotals() {
                var subtotal = 0;
                var delivery = 0;
                var tax = 0;
                
                var itemcount = document.getElementById("itemcount").value;
                for (var i = 0; i < itemcount; i++) {
                    subtotal =subtotal + parseInt(document.getElementById("subprice"+i).innerHTML);
                }
                
                document.getElementById("st").innerHTML = subtotal;
                if (subtotal > 500) {
                    delivery = 100;
                }
                document.getElementById("dc").innerHTML = delivery;
                tax = subtotal * 5 / 100;
                document.getElementById("tax").innerHTML = tax;
                total = subtotal + tax + delivery;
                document.getElementById("total").innerHTML = total;
            }
    </script>

    <%
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
</html>
