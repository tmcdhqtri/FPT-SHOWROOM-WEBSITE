<%-- 
    Document   : car-detail
    Created on : Jul 10, 2022, 6:49:02 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>FPT Showroom</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    </head>
    <body class="is-preload">
        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header">
                <div class="inner">

                    <!-- Logo -->
                    <a href="index.html" class="logo">
                        <span class="fa fa-car"></span> <span class="title">FPT Showroom Website</span>
                    </a>

                    <!-- Nav -->
                    <nav>
                        <ul>
                            <li><a href="#menu">Menu</a></li>
                        </ul>
                    </nav>

                </div>
            </header>

            <!-- Menu -->
            <!--					<nav id="menu">
                                                            <h2>Menu</h2>
                                                            <ul>
                                                                    <li><a href="index.html">Home</a></li>
            
                                                                    <li><a href="cars.html" class="active">Cars</a></li>
            
                                                                    <li>
                                                                            <a href="#" class="dropdown-toggle">About</a>
            
                                                                            <ul>
                                                                                    <li><a href="about.html">About Us</a></li>
                                                                                    <li><a href="team.html">Team</a></li>
                                                                                    <li><a href="blog.html">Blog</a></li>
                                                                                    <li><a href="testimonials.html">Testimonials</a></li>
                                                                                    <li><a href="faq.html">FAQ</a></li>
                                                                                    <li><a href="terms.html">Terms</a></li>
                                                                            </ul>
                                                                    </li>
                                                                    <li><a href="contact.html">Contact Us</a></li>
                                                            </ul>
                                                    </nav>-->
            <nav id="menu">
                <h2>Menu</h2>
                <ul>
                    <li><a href="HomeServlet" class="active">Home</a></li>

                    <li><a href="cars.jsp">Cars</a></li>

                    <li>
                        <a href="#" class="dropdown-toggle">About</a>

                        <ul>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="AdminServlet">Team</a></li>
                            <li><a href="BlogServlet">Blog</a></li>
                            <!--                            <li><a href="testimonials.jsp">Testimonials</a></li>-->
                            <li><a href="faq.jsp">FAQ</a></li>
                            <li><a href="terms.jsp">Terms</a></li>
                                <c:if test="${sessionScope.ROLEADMIN==1 || sessionScope.ROLE!=null}">

                                <li><a href="ReadMessage">Message</a></li>
                                </c:if>

                        </ul>
                    </li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="RegisToDrive.jsp">Registered To Test Car</a></li>
                        <c:if test="${sessionScope.ROLE==null && sessionScope.ROLEUSER==null}">
                        <li><a href="login.jsp">Login</a></li>
                        </c:if>

                    <c:if test="${sessionScope.ROLE!=null ||sessionScope.ROLEUSER!=null }">
                        <li><a href="LogoutServlet">Logout</a></li>
                        </c:if>

                    <c:if test="${sessionScope.ROLEADMIN==1 || sessionScope.ROLE!=null}">
                        <li><a href="AdminManageServlet">Manage</a></li>
                        </c:if>
                </ul>

            </nav>
            <!-- Main -->
            <div id="main">
                <div class="inner">
                    <h1>${intro.carName}<span class="pull-right">$${car.price}</span></h1>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-7">
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <!--										  <ol class="carousel-indicators">
                                                                                                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                                                                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                                                                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                                                                                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                                                                                                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                                                                                                      </ol>-->
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="${car.imageURL}" alt="First slide">
                                        </div>
                                        <!--										    <div class="carousel-item">
                                                                                                                              <img class="d-block w-100" src="images/product-2-720x480.jpg" alt="Second slide">
                                                                                                                            </div>
                                                                                                                            <div class="carousel-item">
                                                                                                                              <img class="d-block w-100" src="images/product-3-720x480.jpg" alt="Third slide">
                                                                                                                            </div>
                                                                                                                            <div class="carousel-item">
                                                                                                                              <img class="d-block w-100" src="images/product-4-720x480.jpg" alt="Fourth slide">
                                                                                                                            </div>
                                                                                                                            <div class="carousel-item">
                                                                                                                              <img class="d-block w-100" src="images/product-5-720x480.jpg" alt="Fifth slide">
                                                                                                                            </div>-->
                                    </div>
                                    <!--										  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                                                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                                                                                        <span class="sr-only">Previous</span>
                                                                                                                      </a>
                                                                                                                      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                                                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                                                                                        <span class="sr-only">Next</span>
                                                                                                                      </a>-->
                                </div>
                            </div>

                            <div class="col-lg-5">
                                <h3>Vehicle Description</h3>

                                <p>${intro.desc}</p>
                            </div>
                        </div>
                    </div>

                    <br>


                    <form action="#">
                        <div class="fields">
                            <div class="field quarter">
                                <label class="m-n">CarID</label>

                                <input type="text" readonly="" value="${intro.carID}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Name</label>

                                <input type="text" readonly="" value="${intro.carName}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Model</label>

                                <input type="text" readonly="" value="${intro.model}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">First registration</label>

                                <input type="text" readonly="" value="${car.date}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Quantity</label>

                                <input type="text" readonly="" value="${car.quantity}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Number Of Seat</label>

                                <input type="text" readonly="" value="${car.numSeat}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Doors</label>

                                <input type="text" readonly="" value="${car.doors}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Color</label>

                                <input type="text" readonly="" value="${car.color}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Made in</label>

                                <input type="text" readonly="" value="${car.madeIn}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Engine Size</label>

                                <input type="text" readonly="" value="${car.engineSize}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Power</label>

                                <input type="text" readonly="" value="${car.power}">
                            </div>

                            <div class="field quarter">
                                <label class="m-n">Cylinders</label>

                                <input type="text" readonly="" value="${car.cylinders}">
                            </div>
                        </div>
                    </form>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-3">
                                <h3>Contact Details</h3>

                                <ul class="alt">
                                    <li><span class="fa fa-user"></span> ${adminContact.adminName}</li>
                                    <li><span class="fa fa-phone"></span>${adminContact.phone} </li>
                                    <li><span class="fa fa-mobile-phone"></span>  ${adminContact.phone} </li>
                                    <li><span class="fa fa-envelope-o"></span> <a href="#"> ${adminContact.email}</a></li>

                                </ul>
                            </div>

                            <div class="col-md-9">
                                <h3>Extras </h3>

                                <p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer id="footer">
                <div class="inner">
                    <section>
                        <ul class="icons">
                            <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
                            <li><a href="#" class="icon style2 fa-linkedin"><span class="label">LinkedIn</span></a></li>
                        </ul>

                        &nbsp;
                    </section>

<!--                    <ul class="copyright">
                        <li>Copyright © 2020 Company Name </li>
                        <li>Template by: <a href="https://www.phpjabbers.com/">PHPJabbers.com</a></li>
                    </ul>-->
                </div>
            </footer>

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
