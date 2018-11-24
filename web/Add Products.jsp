<!doctype html>
<html lang="en">
    <jsp:include page="Admin_header.jsp" />
    <body style="background-color: lightyellow">
        <div class="container">
            <div class="col">
                <div class="col-sm-4 col-xs-4 offset-sm-4 offset-xs-4">
                    <h2>Add Products Form</h2>
                    <form name="myForm" action="addproServlet" onsubmit="return validateForm(this)" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="name" style="color: midnightblue;">Product Name:</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter product name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="description" style="color: midnightblue;">Product Description:</label>
                            <textarea class="form-control" id="description" placeholder="Enter product description" name="description" rows="2" cols="30"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="quantity" style="color: midnightblue;">Product Quantity:</label>
                            <input type="number" class="form-control" id="quantity" pattern="[0-9]" placeholder="Enter quantity" name="quantity">
                        </div>                    
                        <div class="form-group inputDnD">
                            <label for="image" style="color: midnightblue;">File Upload:</label>
                            <input type="file" class="form-control text-success font-weight-bold" id="fileUpload" accept="image/*" onchange="readUrl(this)" name="image" data-title="Drag and drop a file">
                        </div>
                        <div class="form-group">
                            <label for="category" style="color: midnightblue;">Category</label>
                            <select class="form-control" id="category" name="category">
                                <OPTION Value="none">Select None</OPTION>
                                <OPTION Value="electronics">Electronics</OPTION>
                                <OPTION Value="appliances">TV's & Appliances</OPTION>
                                <OPTION Value="men">Men</OPTION>
                                <OPTION Value="women">Women</OPTION>
                                <OPTION Value="kids">Baby & Kids</OPTION>
                                <OPTION value="furniture">Home & Furniture</OPTION>
                                <OPTION value="sports_books">Sports, Books & More</OPTION>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="brand" style="color: midnightblue;">Brand:</label>
                            <input type="text" class="form-control" id="brand" placeholder="Enter brand name" name="brand">
                        </div>
                        <div class="form-group">
                            <label for="price" style="color: midnightblue;">Product Price:</label>
                            <input type="number" class="form-control" id="price" placeholder="Enter product price" name="price">
                        </div>
                        <div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        </div><br>
                    </form>
                </div>
            </div>
        </div>

        <!-- /.container -->

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script>
        function readUrl(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var imgData = e.target.result;
                    var imgName = input.files[0].name;
                    input.setAttribute("data-title", imgName);
                    console.log(e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        /*function validateForm(form) {
         var valid = false;
         // product price
         var y = document.forms["myForm"]["price"].value;
         price_re = new RegExp("^[0-9]+$", "g");
         if (!y.match(price_re)) {
         alert("Enter valid price" + price_re);
         form.price_re.focus();
         return false;
         }
         // image upload
         /*var formData = new FormData();

         var file = document.getElementById("img").files[0];

         formData.append("Filedata", file);
         var t = file.type.split('/').pop().toLowerCase();
         if (t != "jpeg" && t != "jpg" && t != "png" && t != "bmp" && t != "gif") {
         alert('Please select a valid image file');
         document.getElementById("img").value = '';
         return false;
         }
         if (file.size > 1024000) {
         alert('Max Upload size is 1MB only');
         document.getElementById("img").value = '';
         return false;
         }
         return true; 
         // image upload
         var fileUpload = document.getElementById("fileUpload");
         if (typeof(fileUpload.files) != "undefined") {
         var size = parseFloat(fileUpload.files[0].size / 1024).toFixed(2);
         //alert(size + " KB.");
         } else {
         alert("This browser does not support HTML5.");
         }
         }*/

        </script>
    </body>

</html>
