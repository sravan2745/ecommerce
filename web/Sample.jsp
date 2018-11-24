<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
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
        .inputDnD {
            .form-control-file {
                position: relative;
                width: 100%;
                height: 100%;
                min-height: 6em;
                outline: none;
                visibility: hidden;
                cursor: p6ointer;
                background-color: #c61c23;
                box-shadow: 0 0 5px solid currentColor;
                &:before {
                    content: attr(data-title);
                    position: absolute;
                    top: 0.5em;
                    left: 0;
                    width: 100%;
                    min-height: 6em;
                    line-height: 2em;
                    padding-top: 1.5em;
                    opacity: 1;
                    visibility: visible;
                    text-align: center;
                    border: 0.25em dashed currentColor;
                    transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
                    overflow: hidden;
                }
                &:hover {
                    &:before {
                        border-style: solid;
                        box-shadow: inset 0px 0px 0px 0.25em currentColor;
                    }
                }
            }
        } /*PRESENTATIONAL CSS*/
        body {
            background-color: #f7f7f9;
        }

    </style>
</head>


<body>

    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <div class="container p-y-1">
        <div class="row m-b-1">
            <div class="col-sm-6 offset-sm-3">
                <button type="button" class="btn btn-primary btn-block" onclick="document.getElementById('inputFile').click()">Add Image</button>
                <div class="form-group inputDnD">
                    <label class="sr-only" for="inputFile">File Upload</label>
                    <input type="file" name="thumb" class="form-control-file text-primary font-weight-bold" id="inputFile" accept="image/*" onchange="readUrl(this)" data-title="Drag and drop a file">
                </div>
            </div>
        </div>
        <div class="row m-b-1">
            <div class="col-sm-6 offset-sm-3">
                <button type="button" class="btn btn-success btn-block" onclick="document.getElementById('inputFile').click()">Add Image</button>
                <div class="form-group inputDnD">
                    <label class="sr-only" for="inputFile">File Upload</label>
                    <input type="file" class="form-control-file text-success font-weight-bold" id="inputFile" accept="image/*" onchange="readUrl(this)" data-title="Drag and drop a file">
                </div>
            </div>
        </div>
        <div class="row m-b-1">
            <div class="col-sm-6 offset-sm-3">
                <button type="button" class="btn btn-warning btn-block" onclick="document.getElementById('inputFile').click()">Add Image</button>
                <div class="form-group inputDnD">
                    <label class="sr-only" for="inputFile">File Upload</label>
                    <input type="file" class="form-control-file text-warning font-weight-bold" id="inputFile" accept="image/*" onchange="readUrl(this)" data-title="Drag and drop a file">
                </div>
            </div>
        </div>
        <div class="row m-b-1">
            <div class="col-sm-6 offset-sm-3">
                <button type="button" class="btn btn-danger btn-block" onclick="document.getElementById('inputFile').click()">Add Image sravan</button>
                <div class="form-group inputDnD">
                    <label class="sr-only" for="inputFile">File Upload</label>
                    <input type="file" class="form-control-file text-danger font-weight-bold" id="inputFile" accept="image/*" onchange="readUrl(this)" data-title="Drag and drop a file">
                </div>
            </div>
        </div>
    </div>
    <div class="dropzone" data-width="960" data-height="540" data-resize="true" data-url="canvas.php" style="width: 100%;">
        <input type="file" name="thumb" />
    </div>

    <script>
        function readUrl(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    var imgData = e.target.result;
                    var imgName = input.files[0].name;
                    input.setAttribute("data-title", imgName);
                    console.log(e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        $('.dropzone').html5imageupload();

    </script>
    <!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>

</html>
