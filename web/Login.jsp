<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />

    <title>Signin | DMart</title>

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
                <!--<li class="nav-item active">
                    <a class="nav-link" href="#"><span class="glyphicon glyphicon-shopping-cart">&#128722;</span>Cart</a>
                </li>-->
            </ul>
        </div>
    </nav>
</header>

<body style="background-color: lightyellow;">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-xs-4 offset-sm-4 show-forms">
                <!--<h2>Log In</h2>-->
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-1 show-forms">
                        <span class="show-register-form active" style="color: midnightblue;"><h2>Log In</h2></span>
                    </div>
                </div>
                <form name="myForm" action="signinServlet" onsubmit="return validateForm(this);" method="post">
                    <div class="form-group">
                        <label for="email" style="color: midnightblue;">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd" style="color: midnightblue;">Password:</label>
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                    </div>
                    <div class="checkbox" style="color: midnightblue;">
                        <label><input type="checkbox" name="remember" > Remember me</label>
                    </div>
                    <!--<button type="submit" class="btn btn-default">Submit</button>-->
                    <div>
                        <button type="submit" class="btn">Sign in!</button>
                        <button type="reset" class="btn btn-default">Reset</button>
                        <button type="register" class="btn btn-default"><a href="Registration.jsp">Register</a></button>
                    </div><br>
                    <div class="form-group">
                        <p>Trouble logging? Click here..</p><a href="Password Reset.jsp">Forget password</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    function validateForm(form) {
        var valid = false;
        //email
        var email = document.forms["myForm"]["email"].value;
        /*email_re = new RegExp("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", "g");*/
        email_re = new RegExp("^[a-z 0-9 . ]+@[a-z]+[.][a-z]+$", "g");
        if (!email.match(email_re)) {
            alert(" Enter valid email, ex: sweety15.vallu@gmail.com");
            form.email.focus();
            return false;
        }
        //password
        var pass = document.forms["myForm"]["pwd"].value;
        pass_re = new RegExp("^[a-z A-Z 0-9]+$", "g");
        if (!pass.match(pass_re)) {
            alert(" Enter valid password" + pass_re);
            form.pwd.focus();
            return false;
        }
        if (pass.length < 3) {
            alert("password length not matched" + '\n' + "enter 5 to 10 characters");
            return false;
        }
    }

</script>
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
