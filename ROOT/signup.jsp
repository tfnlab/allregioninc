<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Nomad Force HTML Template - News Page</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;700;900&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css/magnific-popup.css">

        <link href="css/aos.css" rel="stylesheet">

        <link href="css/templatemo-nomad-force.css" rel="stylesheet">
<!--

TemplateMo 567 Nomad Force

https://templatemo.com/tm-567-nomad-force

-->
<script>
function submitForm(event) {
  event.preventDefault();
  var form = document.getElementById("myForm");

  // Create a new XMLHttpRequest object
  var xhr = new XMLHttpRequest();

  // Set the callback function
  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4) {
      // The request is complete
      if (xhr.status == 200) {
        // The request was successful
        var response = xhr.responseText;
        document.getElementById("hrnapi").innerHTML = response;
        // Do something with the response
      } else {
        // The request was unsuccessful
      }
    }
  };
  // Set the request method and URL
  xhr.open(form.method, form.action);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  var formData = new FormData(form);
  var params = new URLSearchParams(formData);
  xhr.send(params);

}
</script>
    </head>

    <body>

        <main>

            <nav class="navbar navbar-expand-lg bg-light shadow-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.html">
                      <strong>All Region Inc</strong>
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html#hero">Home</a>
                            </li>
                            <li class="nav-item" ><a class="nav-link" href="https://opensea.io/collection/all-region">Ethereum</a></li>
                            <li class="nav-item" ><a class="nav-link" href="https://opensea.io/collection/all-region-v2">Matic</a></li>
                            <li class="nav-item" ><a class="nav-link" href="https://polygonscan.com/token/0x5a1d742fee322f8815b1616c8bb8f2de0f584106">All Region Coin</a></li>
                            <li class="nav-item"><a class="nav-link" class="nav-link" href="signin.jsp">Sign-In</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <section class="news-detail section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-10 mx-auto" id="hrnapi" name="hrnapi">
                            <h2 class="mb-3" >All Region Inc Portal Sign-Up</h2>
                            <form action="hrn.jsp" method="POST" name="myForm" id="myForm" >
                              <input type="hidden" id="apiAction" name="apiAction" value="signup" />
                                <div class="form-group mt-3">
                              <div class="row">
                                <div class="col">
                          		<label for="firstName">First Name:</label><br>
                          		<input type="text"  class="form-control mt-1" id="firstName" name="firstName"  required  tabindex="1"><br>
                                </div>
                                <div class="col">
                          		<label for="middleInitial">Middle Initial:</label><br>
                          		<input type="text"  class="form-control mt-1" id="middleInitial" name="middleInitial"  tabindex="2"><br>
                                </div>
                                <div class="col">
                          		<label for="lastName">Last Name:</label><br>
                          		<input type="text"  class="form-control mt-1" id="lastName" name="lastName" required  tabindex="3"><br>
                                </div>
                              </div>
                                </div>

                              <div class="form-group mt-3">
                          		<label for="email">Email:</label><br>
                          		<input type="email"  class="form-control" id="email" name="email" required  tabindex="4"><br>
                              </div>
                              <div class="form-group mt-3">
                          		<label for="phone">Phone:</label><br>
                          		<input type="text"  class="form-control" id="phone" name="phone" required  tabindex="5"><br>
                              </div>
                              <div class="form-group mt-3">
                          		<label for="username">Username:</label><br>
                          		<input type="text"  class="form-control" id="username" name="username" required  tabindex="6"><br>
                              </div>
                              <div class="form-group mt-3">
                          		<label for="password">Password:</label><br>
                          		<input type="password"  class="form-control" id="password" name="password" required  tabindex="7"><br>
                              </div>
                              <div class="form-group mt-3">
                              <label for="address">Address:</label><br>
                          		<input type="text"  class="form-control" id="address" name="address" required  tabindex="8"><br>
                              </div>


                              <div class="form-group mt-3">


                              <div class="row">
                              <div class="col">
                              <label for="city">City:</label><br>
                          		<input type="text"  class="form-control" id="city" name="city" required  tabindex="9"><br>
                              </div>
                              <div class="col">
                              <label for="state">State:</label><br>
                          		<input type="text"  class="form-control" id="state" name="state" required  tabindex="10"><br>
                                </div>
                                <div class="col">
                                <label for="state">Zip:</label><br>
                                <input type="text"  class="form-control" id="zipcode" name="zipcode" required  tabindex="11"><br><br>
                                </div>
                              </div>
                              </div>
                              <div class="form-group  mt-3">
                                <label for="url_facebook">Referred By</label>
                                <input type="text" class="form-control" id="referred_by" name="referred_by" <% if (request.getParameter("referred_by") !=null) { %>value="<%=request.getParameter("referred_by")%>" <% } %>  tabindex="12" >
                              </div>
                              <hr class="mt-3">
                                <button type="submit" class="btn btn-primary btn-lg btn-block"  tabindex="13" onclick="submitForm(event)" >Sign-up</button>
                              	</form>
                        </div>

                    </div>
                </div>
            </section>


        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-12">
                        <h5 class="text-white">
                            <i class="bi-geo-alt-fill me-2"></i>
                            All Region Inc
                        </h5>
                        <a href="mailto:info@allregioninc.com" class="custom-link mt-3 mb-5">
                            info@allregioninc.com
                        </a>
                    </div>

                    <div class="col-6">
                      <p>
                         Copyright © TFNLab 2023
                        <br><br>Design: <a href="https://tfnlab.com" target="_parent">TFNLab</a>
                    </p>

                    </div>

                    <div class="col-lg-3 col-5 ms-auto">
                        <ul class="social-icon">
                            <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                            <li><a href="#" class="social-icon-link bi-twitter"></a></li>

                            <li><a href="#" class="social-icon-link bi-whatsapp"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                        </ul>
                    </div>

                </div>
            </section>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>
        <script src="js/scrollspy.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
