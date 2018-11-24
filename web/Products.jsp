<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />
    <title>Products | DMart</title>

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

    </style>
</head>
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="D-Mart.jsp"><img src="images/Logos/Logo_1517995790551.png" style="height: 50px; padding-bottom: 5px"></a>
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
            <form class="form-inline my-2 my-lg-0">
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
                <li class="nav-item active">
                    <a class="nav-link" href="#"><span class="glyphicon glyphicon-shopping-cart"></span>&#128722; Cart</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-item "><a class="nav-link" href="Registration.jsp" style="color: white;"><span class="fa fa-sign-in"></span> Sign Up</a></li>
                <li class="nav-item "><a class="nav-link" href="index.jsp" style="color: white;"><span class="fa fa-sign-out"></span> Log out</a></li>
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
                <!--Card Images -->
                <div class="row">
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <a href="#"><img class="card-img-top" src="images/Products/jbl-t250si-original.jpeg" alt="JBL" style="padding: 15px;"></a>
                            <div class="card-body">
                                <a href="#" style="color: black">
                                    <h6 class="card-title">JBL T250SI Wired Headphone</h6>
                                    <p class="card-text" style="font-size: 10px;">Black, On the ear</p>
                                    &#8377;999<strike> &#8377;2,499</strike> <span style="color: green"> 60% off</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <a href="#"><img class="card-img-top" src="images/Products/motorola-pulse-2-original-imaez7dtrehmyup5.jpeg" alt="Card image" style="padding: 10px;"></a>
                            <div class="card-body">
                                <a href="#" style="color: black">
                                    <h6 class="card-title">Motorola Pulse 2 Headset with Mic</h6>
                                    <p class="MotoroloPulse2" style="font-size: 10px;">Black, On the ear</p>
                                    &#8377;799<strike> &#8377;1,599</strike> <span style="color: green">50% off</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <a href="#"><img class="card-img-top" src="images/Products/skullcandy-s5lhz-j569-anti-original-imaem8zdkfj6sm6d.jpeg" alt="Skullcandy" style="padding: 15px;"></a>
                            <div class="card-body">
                                <a href="#" style="color: black">
                                    <h6 class="card-title">Skullcandy S5LHZ-J569 Anti Headphone</h6>
                                    <p class="card-text" style="font-size: 10px;">Black, On the ear</p>
                                    &#8377;1,099<strike> &#8377;1,999</strike> <span style="color: green"> 45% off</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">John Doe</h4>
                                <p class="card-text">John Doe is an architect and engineer</p>
                                <a href="#" class="btn btn-primary">See Profile</a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">John Doe</h4>
                                <p class="card-text">John Doe is an architect and engineer</p>
                                <a href="#" class="btn btn-primary">See Profile</a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">John Doe</h4>
                                <p class="card-text">John Doe is an architect and engineer</p>
                                <a href="#" class="btn btn-primary">See Profile</a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="padding: 5%;">
                        <div class="card" style="margin: 2px">
                            <img class="card-img-top" src="https://www.w3schools.com/bootstrap4/img_avatar1.png" alt="Card image" style="width:100%">
                            <div class="card-body">
                                <h4 class="card-title">John Doe</h4>
                                <p class="card-text">John Doe is an architect and engineer</p>
                                <a href="#" class="btn btn-primary">See Profile</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="nav justify-content-center">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>
    <!--<nav aria-label="Page navigation" class="nav justify-content-center">
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
            </li>
        </ul>
    </nav>-->
</body>
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

</html>
