<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />

        <title>New Password</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <style type="text/css">
            body {
                padding-top: 5rem;
            }

            .starter-template {
                padding: 3rem 1.5rem;
                text-align: center;
            }

        </style>
        <style>
            /* overlay text on image at different position */

            .contain {
                position: relative;
                text-align: center;
                color: white;
            }

            .bottom-left {
                position: absolute;
                bottom: 8px;
                left: 16px;
            }

            .top-left {
                position: absolute;
                top: 8px;
                left: 16px;
            }

            .top-right {
                position: absolute;
                top: 8px;
                right: 16px;
            }

            .bottom-right {
                position: absolute;
                bottom: 8px;
                right: 16px;
            }

            .centered {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

        </style>
    </head>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
            <a class="navbar-brand" href="index.jsp"><img src="images/Logos/Logo_1517995790551.png" style="height: 50px; padding-bottom: 5px"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">Offers</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Furniture</a>
                            <a class="dropdown-item" href="#">Electronics</a>
                            <a class="dropdown-item" href="#">Fashion</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0 centered">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search Products" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    <!--<input type="text" placeholder="Search..." name="s" id="s" value="" autocomplete="off">
                                    <button class="search-button" type="submit"><span class="icon-search2"></span></button>-->
                </form>
<!--                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Orders</a>
                            <a class="dropdown-item" href="#">Profile</a>
                            <a class="dropdown-item" href="#">Sign Out</a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="glyphicon glyphicon-shopping-cart">&#128722;</span> Cart</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item "><a class="nav-link" href="Registration.jsp" style="color: white;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li class="nav-item "><a class="nav-link" href="Login.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>-->
            </div>
        </nav>
        <!--    <ul class="navbar nav justify-content-center" style="padding: 10px">
                <li class="nav-item">
                    <a class="nav-link" href="#">Electronics</a>
                </li>
        
                <li class="nav-item">
                    <a class="nav-link" href="#">Home Appliances</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Fashion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Home and Furniture</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Sports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Books</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">More</a>
                </li>
            </ul>-->
    </header>

    <body style="background-color: lightyellow;">
        <div class="container">
            <div class="row register-form">
                <div class="col-sm-4 col-xs-4 offset-sm-4 show-forms">
                    <!--<h2>Log In</h2>-->
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-3 show-forms">
                            <span class="show-register-form active" style="color: midnightblue;"><h2>New Password</h2></span>
                        </div>
                    </div>
                    <form action="/action_page.php">
                        <div class="form-group">
                            <label for="pwd" style="color: midnightblue;">New Password</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter new password" name="pwd">
                        </div>
                        <div class="form-group">
                            <label for="pwd" style="color: midnightblue;">Confirm New Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Re-Enter new password" name="pwd">
                        </div>
                        <!--<button type="submit" class="btn btn-default">Submit</button>-->
                        <div>
                            <button type="submit" class="btn">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body><br><br><br>
    <footer style="padding:2%">
        <div class="contain">
            <img src="images/Maps/map.jpg" alt="DMart MAp" style="width: 100%; height: 250px;">
            <div class="container-fluid">
                <div class="col">
                    <div class="bottom-left">
                        <h6 style="font-size: 12px">DMart</h6>
                        <p style="font-size: 10px">Copyright &copy; 2018<br> Sravan Kumar<br> Site Map</p>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="col">
                        <div class="bottom-right">
                            <ul style="list-style: none; float: right;">
                                <li><a href="#" style="font-size: 10px; color: white;">About Us</a></li>
                                <li><a href="#" style="font-size: 10px; color: white;">Privacy Policy</a></li>
                                <li><a href="#" style="font-size: 10px; color: white;">Terms and Conditions</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="centered">
                        <h2>Contact US</h2>
                        <p>&#128241;</p>
                        <p>+91 2233400500</p>
                        <p>Email : suggestion@dmartindia.com</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</html>
