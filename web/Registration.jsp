<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="Generator" content="EditPlus®">
        <meta name="Author" content="">
        <meta name="Keywords" content="">
        <meta name="Description" content="">
        <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />
        <title>Signup | DMart</title>
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
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
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
                        <a class="nav-link" href="#">&#128722; Cart</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item "><a class="nav-link" href="Registration.jsp" style="color: white;"><span class="glyphicon glyphicon-user">&#128100;</span> Sign Up</a></li>
                    <li class="nav-item "><a class="nav-link" href="Login.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in">&#128100;</span> Login</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <body style="background-color: lightyellow;">
        <div class="container">
            <div class="col">
                <div class="col-sm-4 col-xs-4 offset-sm-4">
                    <h2>Registration Form</h2>
                    <form name="myForm" action="signupServlet" onsubmit="return validateForm(this);" method="post">
                        <div class="form-group">
                            <label for="email" style="color: midnightblue;">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="fname" style="color: midnightblue;">First Name:</label>
                            <input type="text" class="form-control" id="fname" placeholder="Enter first name" name="fname">
                        </div>
                        <div class="form-group">
                            <label for="lname" style="color: midnightblue;">Last Name:</label>
                            <input type="text" class="form-control" id="lname" placeholder="Enter last name" name="lname">
                        </div>
                        <div class="form-group">
                            <label for="mob" style="color: midnightblue;">Mobile:</label>
                            <input type="number" class="form-control" id="mob" pattern="[0-9]" placeholder="Enter mobile number" name="mob">
                        </div>
                        <div class="form-group">
                            <label for="dob" style="color: midnightblue;">Date of Birth:</label>
                            <input type="date" class="form-control" id="dob" placeholder="Enter date of your birth" name="dob">
                        </div>
                        <div class="form-group">
                            <label for="gender" style="color: midnightblue;">Gender:</label><br>
                            <label class="radio-inline">
                                <input type="radio" name="Gender" value="male">Male &#9794; &nbsp;&nbsp;
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="Gender" value="female">Female &#9792; &nbsp;&nbsp;
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="Gender" value="other">Other &#9893;
                            </label>
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
                        <div class="form-group">
                            <label for="pwd" style="color: midnightblue;">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                        </div>
                        <div class="form-group">
                            <label for="cpwd" style="color: midnightblue;">Confirm Password:</label>
                            <input type="password" class="form-control" id="cpwd" placeholder="Enter confirm password" name="cpwd">
                        </div>
                        <div class="form-group">
                            <label for="role" style="color: midnightblue;">Role:</label>
                            <select class="form-control" id="secques" name="role">
                                <OPTION Value="none">Select None</OPTION>
                                <OPTION Value="admin">Admin</OPTION>
                                <OPTION value="user">User</OPTION>
                            </select>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </div><br>
                        <div class="form-group">
                            <p>Already having an Account? Click here..</p><a href="#" style="color: midnightblue;">Log In</a>
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
            email_re = new RegExp("^[a-z 0-9]+@[a-z]+[.][a-z]+$", "g");
            if (!email.match(email_re)) {
                alert(" Enter valid email, ex: sweety15.vallu@gmail.com");
                form.email.focus();
                return false;
            }
            // first name
            var y = document.forms["myForm"]["fname"].value;
            fname_re = new RegExp("^[A-Z a-z]+$", "g");
            if (!y.match(fname_re)) {
                alert("first name does not match, enter valid name" + fname_re);
                form.fname.focus();
                return false;
            }
            if (y.length < 2) {
                alert("first name length not matched" + '\n' + "enter 5 to 20 characters");
                return false;
            }
            //last name
            var z = document.forms["myForm"]["lname"].value;
            lname_re = new RegExp("^[A-Z a-z]+$", "g");
            if (!z.match(lname_re)) {
                alert("last name does not match, enter valid name" + lname_re);
                form.lname.focus();
                return false;
            }
            if (z.length < 2) {
                alert("last name length not matched" + '\n' + "enter 5 to 20 characters");
                return false;
            }
            //mobile number
            var mobile = document.forms["myForm"]["mob"].value;
            var mobile_com = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
            if (!mobile.match(mobile_com)) {
                alert("Enter the valid mobile number");
                form.mob.focus();
                return false;
            }
            //gender
            var gender = document.forms["myForm"]["Gender"].value;
            var gender = false;
            for (i = 0; i < form.Gender.length; i++) {
                if (form.Gender[i].checked)
                    gender = true;
            }
            if (!gender) {
                alert("Select gender");
                return false;
            }
            //date of birth
            var dd = document.forms["myForm"]["dob"].value;
            if (dd < 1) {
                alert("Enter date of birth");
                form.dob.focus();
                return false;
            }
            //secret question
            var seq = document.forms["myForm"]["secques"].value;
            if (seq < 6) {
                alert("Select question");
                form.secques.focus();
                return false;
            }
            //answer
            var ans = document.forms["myForm"]["sanswer"].value;
            if (ans == null || ans == "") {
                alert("Enter answer");
                form.sanswer.focus();
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
            if (pass.length < 5) {
                alert("password length not matched" + '\n' + "enter 5 to 10 characters");
                return false;
            }
            //retype password
            var rpass = document.forms["myForm"]["cpwd"].value;
            //rpass_re= new RegExp("^[a-z A-Z 0-9]+$","g");
            if (rpass != pass) {
                alert(" Enter valid re_password");
                form.cpwd.focus();
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
