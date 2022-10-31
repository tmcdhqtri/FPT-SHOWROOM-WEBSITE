<%-- 
    Document   : login
    Created on : Jul 12, 2022, 11:41:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Login 04</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <span class="fa fa-car"></span> <span class="title"> Car Dealer Website</span>  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="HomeServlet">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            More
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="cars.jsp">Car</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="about.jsp">About Us</a>
                            <a class="dropdown-item" href="AdminServlet">Team</a>
                            <a class="dropdown-item" href="blog.jsp">Blog</a>
                        </div>
                    </li>

                </ul>
            </div>
        </nav>
        <section class="ftco-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-6 text-center mb-5">
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-md-12 col-lg-10">
                            <div class="wrap d-md-flex">
                                <div class="img" style="background-image: url(images/bg-1.jpg);">
                                </div>
                                <div class="login-wrap p-4 p-md-5">
                                    <div class="d-flex">
                                        <div class="w-100">
                                            <h3 class="mb-4">Sign Up</h3>
                                        </div>
                                        <div class="w-100">
                                            <p class="social-media d-flex justify-content-end">
                                                <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
                                                <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
                                            </p>
                                        </div>

                                    </div>
                                    <form action="SignUpServlet" method="" class="signin-form">
                                        <div class="form-group mb-3">
                                            <label class="label" for="name" >Username</label>
                                            <input type="text" class="form-control" placeholder="Username" name="USERNAME" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Password</label>
                                            <input type="password" class="form-control" placeholder="Password" name="PASSWORD" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Full name</label>
                                            <input type="text" class="form-control" placeholder="Full name" name="FULLNAME" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Phone number</label>
                                            <input type="text" class="form-control" placeholder="Phone number" name="PHONE" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Email</label>
                                            <input type="text" class="form-control" placeholder="Email" name="EMAIL" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Address</label>
                                            <input type="text" class="form-control" placeholder="Address" name="ADDRESS" required>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label class="label" for="password">Birthday</label>
                                            <input type="date" class="form-control" placeholder="Birthday" name="BIRTHDAY" required>
                                        </div>
                          
                                        <div class="form-group">
                                            <button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign Up</button>
                                        </div>
                                        
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

