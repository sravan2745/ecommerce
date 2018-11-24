<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link rel="shortcut icon" type="image/x-icon" href="http://www.dmartindia.com/sites/all/themes/newswire/images/fav.ico" />

    <title>Admin | DMart</title>

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
                    <a class="nav-link" href="Add%20Products.jsp">Add Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="ProductsList.jsp">Products</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="#">Furniture</a>
                        <a class="dropdown-item" href="Products.jsp">Electronics</a>
                        <a class="dropdown-item" href="#">Fashion</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav mr-auto">
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search Products" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search&nbsp;<span class="fa fa-search"></span></button>
                </form>
            </ul>
            <!--<ul class="nav navbar-nav navbar-right">
                <li class="nav-item " style="color: white;">Welcome! </li>&nbsp;
            </ul>-->
            <ul class="nav navbar-nav navbar-right">
                <li style="color: greenyellow;">
                    <%
                        session = request.getSession(false);
                        if(session!=null && session.getAttribute("email")!=null)
                        {
                                out.print("Welcome! "+session.getAttribute("email"));

                        %>
                        <a href="Logout.jsp" style="color: white"><span class="fa fa-sign-out">&nbsp;</span>Logout</a>
                        <%  }
                        else{
                        %>
                        <a href="Login.jsp" style="color: white"><span class="fa fa-sign-in">&nbsp;</span>Login</a>
                    <% } %>                            
                </li>
            </ul>
        </div>
    </nav>
</header>