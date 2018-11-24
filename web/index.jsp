<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="Generator" content="EditPlus®">
        <meta name="Author" content="">
        <meta name="Keywords" content="">
        <meta name="Description" content="">
        <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />
        <title>Home | DMart</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <!-- Font Awesome Icons-->
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

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

            /* countdown timer on image on position */

            .middle {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }

            hr {
                margin: auto;
                width: 100%;
            }

            .bgimg {
                background-image: url('https://www.thedailymeal.com/sites/default/files/story/2016/supermarketcart.JPG');
                height: 100%;
                background-size: cover;
                position: relative;
                color: white;
                font-family: "Courier New", Courier, monospace;
                font-size: 30px;
            }


            /* parallax of scrolling image */

            #showcase {
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                    url('https://www.thedailymeal.com/sites/default/files/story/2016/supermarketcart.JPG') 100% no-repeat;
                padding: 10%;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                margin-top: 100px;
            }

            #showcase:hover {
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.6)),
                    url('https://www.thedailymeal.com/sites/default/files/story/2016/supermarketcart.JPG') 100% no-repeat;
                padding: 10%;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                margin-top: 100px;
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
                        <a class="nav-link" href="product-page.jsp">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">Offers</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Furniture</a>
                            <a class="dropdown-item" href="#">Electronics</a>
                            <a class="dropdown-item" href="#">Fashion</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search Products" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    <!--<input type="text" placeholder="Search..." name="s" id="s" value="" autocomplete="off">
                            <button class="search-button" type="submit"><span class="icon-search2"></span></button>-->
                </form>
                <ul class="navbar-nav mr-auto">
<!--                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="#">Orders</a>
                            <a class="dropdown-item" href="#">Profile</a>
                            <a class="dropdown-item" href="#">Sign Out</a>
                        </div>
                    </li>-->
                    <li class="nav-item active">
                        <a class="nav-link" href="Cart.jsp"><button type="button" class="btn btn-outline-primary"><span class="fa fa-shopping-cart">&nbsp;</span>Cart</button></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li style="color: greenyellow;">
                        <%
                            session = request.getSession(false);
                            if (session != null && session.getAttribute("email") != null) {
                                out.print(session.getAttribute("email"));

                        %>
                        <a href="Logout.jsp" style="color: white"><span class="fa fa-sign-out">&nbsp;</span>Logout</a>
                        <%  } else {
                        %>
                        <a href="Login.jsp" style="color: white"><span class="fa fa-sign-in">&nbsp;</span>Login</a>
                        <% }%> 
                    </li>
                    <!--                <li class="nav-item "><a class="nav-link" href="Registration.jsp" style="color: white;"><span class="fa fa-user">&nbsp;</span> Sign Up</a></li>
                                    <li class="nav-item "><a class="nav-link" href="Login.jsp" style="color: white;"><span class="fa fa-sign-in">&nbsp;</span>Login</a></li>-->                    
                </ul>
            </div>
        </nav>
        <ul class="nav justify-content-center" style="padding: 5px; background-color: white;">
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
        </ul>
    </header>

    <body style="background-color: lightyellow;">
        <main role="main" class="container">
        </main>
        <!--<h3 style="background-color: midnightblue; color: white">MENU</h3>-->
        <!--<img src="Banner109_11_2015_02_35_31.jpg" width="1360" height="450" alt="Banner109_11_2015_02_35_31"><br><br>-->
        <main role="main" class="container">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/summer.jpg" alt="summer" width="1125px" height="250px">
                    </div>
                    <div class="carousel-item">
                        <img src="images/acernitrogaming5.jpg" alt="acer laptop" width="1125px" height="250px">
                    </div>
                    <div class="carousel-item">
                        <img src="images/samsung_S9.jpg" alt="samsung S9" width="1125px" height="250px">
                    </div>
                    <div class="carousel-item">
                        <img src="images/Tv.jpg" alt="tv" width="1125px" height="250px">
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div><br>
        </main>
        <div class="container" style="width: 100%;">
            <div class="row justify-content-center">
                <div class="theme-table-image col-sm-2">
                    <img src="images/suppliers_icon.png" alt="suppliers_icon" width="150" height="92">
                </div>
                <div class="theme-table-image col-sm-2">
                    <img src="images/landlord_icon.png" alt="landlord_icon" width="150" height="92">
                </div>
                <div class="theme-table-image col-sm-2">
                    <img src="images/careers.png" alt="careers" width="150" height="92">
                </div>
                <div class="theme-table-image col-sm-2">
                    <img src="images/csr_icon.png" alt="csr_icon" width="150" height="92">
                </div>
                <div class="theme-table-image col-sm-2">
                    <img src="images/Zirakpur16_04_2017_11_44_47.jpg" alt="Zirakpur16_04_2017_11_44_47" width="150" height="92">
                </div>
            </div>
        </div>
        <div class="container bgimg" id="showcase">
            <div class="middle">
                <h1 style="text-align: center; color: white;">COMING SOON</h1>
                <hr>
                <p id="timer" style="font-size: 30px; color: white;"></p>
            </div>
            <!--<h2 style="text-align: center; color: white">COMING SOON</h2>
            <hr>
            <p style="text-align: center; color: white">DMart is a one-stop supermarket chain that aims to offer customers a wide range of basic home and personal products under one roof. Each DMart store stocks home utility products - including food, toiletries, beauty products, garments, kitchenware, bed and bath linen, home appliances and more - available at competitive prices that our customers appreciate. Our core objective is to offer customers good products at great value.</p>-->
        </div><br>
        <div align='center'>
            <h2 style="color: #145A32; text-align: center;">STORE CATEGORIES</h2>
        </div><br>
        <div class="container" style="width: 100%; padding-left: 60px;">
            <div class="row justify-content-center">
                <div class="theme-table-image col-sm-3 col-md-3">
                    <div class="wrapper">
                        <img src="images/grocery_&_staples_27_02_2016_12_44_29.jpg" alt="grocery_&_staples_27_02_2016_12_44_29" width="150" height="92" class="image">
                        <div class="description">
                            <!-- description content -->
                            <p class='description_content'>GROCERY & STAPLES</p>
                            <!-- end description content -->
                        </div>
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/daily_essentials_02_03_2016_04_35_25.jpg" alt="daily_essentials_02_03_2016_04_35_25" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>DAILY ESSENTAILS</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/dmart_brands_06_03_2016_10_02_49.jpg" alt="dmart_brands_06_03_2016_10_02_49" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>DMART BRANDS</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/home_&_personal_care_02_03_2016_03_24_24.jpg" alt="home_&_personal_care_02_03_2016_03_24_24" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>HOME & PERSONAL</p>
                        <!-- end description content -->
                    </div>
                </div>
            </div>
        </div><br>
        <div class="container" style="width: 100%; padding-left: 60px;">
            <div class="row justify-content-center">
                <div class="theme-table-image col-sm-3">
                    <img src="images/dairy_&_frozen_02_03_2016_03_23_46.jpg" alt="dairy_&_frozen_02_03_2016_03_23_46" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>DAIRY & FROZEN</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/fruits_&_vegetables_27_02_2016_12_41_12.jpg" alt="fruits_&_vegetables_27_02_2016_12_41_12" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>FRUITS & VEGETABLES</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/bed_&_bath_02_03_2016_03_23_10.jpg" alt="bed_&_bath_02_03_2016_03_23_10" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>BED & BATH</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/luggage_27_02_2016_12_42_36.jpg" alt="luggage_27_02_2016_12_42_36" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>LUGGAGE</p>
                        <!-- end description content -->
                    </div>
                </div>
            </div>
        </div><br>
        <div class="container" style="width: 100%; padding-left: 60px;">
            <div class="row justify-content-center">
                <div class="theme-table-image col-sm-3">
                    <img src="images/footwear_27_02_2016_12_42_55.jpg" alt="Footwear" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>FOOTWEAR</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/crockery_27_02_2016_12_41_25.jpg" alt="crockery" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>CROCKERY</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/toys_&_games_27_02_2016_12_41_38.jpg" alt="toys_&_games" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>TOYS & GAMES</p>
                        <!-- end description content -->
                    </div>
                </div>
                <div class="theme-table-image col-sm-3">
                    <img src="images/plastic_containers_27_02_2016_12_42_09.jpg" alt="plastic_containers" width="150" height="92">
                    <div class="description">
                        <!-- description content -->
                        <p class='description_content'>PLASTIC CONTAINER</p>
                        <!-- end description content -->
                    </div>
                </div>
            </div>
        </div><br>
        <!-- /.container -->

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
    <script>
        // Set the date we're counting down to
        var countDownDate = new Date("Jun 30, 2018 00:00:00").getTime();

        // Update the count down every 1 second
        var countdownfunction = setInterval(function () {

            // Get todays date and time
            var now = new Date().getTime();

            // Find the distance between now an the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Output the result in an element with id="timer"
            document.getElementById("timer").innerHTML = days + "d " + hours + "h " +
                    minutes + "m " + seconds + "s ";

            // If the count down is over, write some text 
            if (distance < 0) {
                clearInterval(countdownfunction);
                document.getElementById("timer").innerHTML = "EXPIRED";
            }
        }, 1000);

    </script>
    <footer style="padding:2%">
        <div class="contain">
            <img src="images/Maps/map.jpg" alt="DMart MAp" style="width:100%;">
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
    <!--<footer style="padding: 5%">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <h6 style="font-size: 12px">DMart</h6>
                    <p style="font-size: 10px">Copyright &copy; 2018<br> Sravan Kumar<br> Site Map</p>
                </div>
                <div class="col">
                    <ul style="list-style: none; float: right;">
                        <li><a href="#" style="font-size: 10px">About Us</a></li>
                        <li><a href="#" style="font-size: 10px">Privacy Policy</a></li>
                        <li><a href="#" style="font-size: 10px">Terms and Conditions</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>-->

</html>
