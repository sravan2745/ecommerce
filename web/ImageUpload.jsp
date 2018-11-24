<!DOCTYPE html>
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

</head>
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="D-Mart.html"><img src="images/Logos/Logo_1517995790551.png" style="height: 50px; padding-bottom: 5px"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
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
                <li class="nav-item "><a class="nav-link" href="Registration.html" style="color: white;"><span class="glyphicon glyphicon-user">&#128100;</span> Sign Up</a></li>
                <li class="nav-item "><a class="nav-link" href="Login.html" style="color: white;"><span class="glyphicon glyphicon-log-in">&#128100; </span> Login</a></li>
            </ul>
        </div>
    </nav>
    <ul class="nav justify-content-center" style="padding: 5px; background-color: white;">
        <li class="nav-item">
            <img src="images/D-Mart%20Logo.gif" width="100" height="30" alt="Banner109_11_2015_02_35_31">
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Products.html">Electronic</a>
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
        <div class="col">
            <div class="col-sm-4 col-xs-4 offset-sm-4 offset-xs-4">
                <h2>Add Products Form</h2>
                <form name="myForm" action="imageuploadServlet" onsubmit="return validateForm(this);" method="post">
                    <div class="form-group">
                        <label for="name" style="color: midnightblue;">Product Name:</label>
                        <input type="name" class="form-control" id="name" placeholder="Enter product name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="image">Photo Upload:</label>
                        <input type="file" class="form-control" id="image" name="image" accept="image/*" onchange="readUrl(this)" data-title="Drag and drop a file">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-default">Submit</button>
                        <button type="reset" class="btn btn-default">Reset</button>
                    </div><br>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
