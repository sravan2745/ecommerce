<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout | DMart</title>
        <jsp:include page="User_header.jsp" />
    </head>
    <body style="background-color: lightyellow;">
        <div class="container-fluid">
            <div class="row">
                <div class="col" style=" margin: 2%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: activeborder;"">
                    <div class="row">
                        <div class="row" style="padding: 10px;">
                            <div class="col-12">
<!--                                <h4 style="padding: 8px">MY CART(<span id="itemcount"></span>)</h4>                               -->
                            </div>
                        </div>
                    </div><hr>
        <div class="container">
            <div class="col-sm-4 col-xs-4 offset-sm-1 offset-xs-1">                
                <form action="OrderConfirm" method="post">                                                          
                    <div class="col">
                        <div class="form-group">
                            <label for="address" class="form-group active"><h2>DELIVERY ADDRESS</h2></label>
                            <textarea class="form-control" rows="5" id="address" name="address"></textarea>                            
                        </div>
                        <div>
                            <label for="remarks"><h2>PAYMENT OPTIONS</h2></label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="card">&nbsp; Credit / Debit / ATM</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="netbanking">&nbsp; Net Banking</label>
                        </div>
                        <div class="radio disabled">
                            <label><input type="radio" name="emi">&nbsp; EMI (Easy Installments)</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="cod" disabled>&nbsp; Cash on Delivery</label>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-success"  type="submit">&nbsp; Place Order</button>
                        </div>                                
                    </div>                        
                </form>
            </div>
        </div>
    </body>
</html>