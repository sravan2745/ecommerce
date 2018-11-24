<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="Generator" content="EditPlus®">
        <meta name="Author" content="">
        <meta name="Keywords" content="">
        <meta name="Description" content="">
        <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />
        <title>Password Rest | DMart</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            body {
                padding-top: 4rem;
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
            <img src="images/Logos/Logo_1517995790551.png" style="height: 50px; padding-bottom: 5px"></a>
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
                <form class="form-inline centered my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search Products" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    <!--<input type="text" placeholder="Search..." name="s" id="s" value="" autocomplete="off">
                        <button class="search-button" type="submit"><span class="icon-search2"></span></button>-->
                </form>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Orders</a>
                            <a class="dropdown-item" href="#">Profile</a>
                            <a class="dropdown-item" href="#">Sign Out</a>
                        </div>
                    </li>
                    <!--                <li class="nav-item active">
                                        <a class="nav-link" href="#"><span class="glyphicon glyphicon-shopping-cart"></span>&#128722; Cart</a>
                                    </li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="nav-item "><a class="nav-link" href="Registration.jsp" style="color: white;"><span class="glyphicon glyphicon-user">&#128100;</span> Sign Up</a></li>
                                    <li class="nav-item "><a class="nav-link" href="Login.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in">&#128100; </span> Login</a></li>
                                </ul>-->
            </div>
        </nav>
        <!--    <ul class="nav justify-content-center" style="padding: 5px; background-color: white;">
                <li class="nav-item">
                    <img src="images/D-Mart%20Logo.gif" width="100" height="30" alt="Banner109_11_2015_02_35_31">
                </li>
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
                        <div class="col-sm-10 col-sm-offset-1 show-forms">
                            <span class="show-register-form active" style="color: midnightblue;"><h2>Reset Password</h2></span>
                        </div>
                    </div>
                    <form action="passwordreset" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="email" style="color: midnightblue;">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="secques" style="color: midnightblue;">Select Security Question</label>
                            <select class="form-control" id="secques" name="secques">
                                <OPTION Value="none">Select None</OPTION>
                                <OPTION Value="firstkiss">What is the first name of the person you first kissed?</OPTION>
                                <OPTION Value="teacher">What is the last name of your first teacher?</OPTION>
                                <OPTION Value="petname">What is your pet's name?</OPTION>
                                <OPTION Value="favcar">What is first favourite car?</OPTION>
                                <OPTION Value="nickname">What was your childhood nickname?</OPTION>
                                <OPTION value="vacation">Where did you vacation last year?</OPTION>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sanswer" style="color: midnightblue;">Enter Security Answer</label>
                            <input type="text" class="form-control" id="sanswer" placeholder="Enter Answer" name="sanswer" length="15">
                        </div>
                        <!--<button type="submit" class="btn btn-default">Submit</button>-->
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div><br><br>
    </body>
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
