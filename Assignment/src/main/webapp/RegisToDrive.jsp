<%-- 
    Document   : RegisToDrive
    Created on : Jul 12, 2022, 8:14:24 PM
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
                    <a href="HomeServlet" class="logo">
                        <span class="fa fa-car"></span> <span class="title">FPT Showroom Website</span>
                    </a>
                    <c:if test="${sessionScope.ROLE!=null}">
                        <span class="fa"></span> <span class="title">Hello ${sessionScope.ROLE.username}</span>
                    </c:if>
                    <!-- Nav -->
                    <nav>
                        <ul>
                            <li><a href="#menu">Menu</a></li>
                        </ul>
                    </nav>

                </div>
            </header>

            <!-- Menu -->
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
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="images/slider-image-1-1920x700.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/slider-image-2-1920x700.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/slider-image-3-1920x700.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

                <br>
                <br>

                <div class="inner">
                    <!-- About Us -->
                    <div class="container-md">
                        <div class="row justify-content-center my-3">
                            <div class="col-lg-12 border border-2 border-info rounded-3">
                                <div class="text-center my-3">
                                    <h4>REGISTER TO TEST CAR</h4>
                                    <div><p style="color: green; text-align: center;">${MESSAGE2}</p></div>
                                </div>
                                <form action="RegistServlet" method="POST">
                                    <div class="my-3">
                                        <label for="ClassName" class="my-2 ">Customer Name</label>
                                        <input type="text" class="form-control border-dark" value="" placeholder="Enter Your Name" name="NAME" >
                                    </div>
                                    <div class="my-3">
                                        <label for="ClassName" class="my-2 ">Customer Phone</label>
                                        <input type="text" class="form-control border-dark" value="" placeholder="Enter Your Phone Number" name="PHONE" >
                                    </div>
                                    <div><p class="text-danger">${MESSAGE1}</p></div>
                                    <div class="mb-3">
                                        <label for="Des" class="my-2 ">CarID</label>
                                        <input type="text" class="form-control border-dark" value="" placeholder="Enter CarID" name="CARID" >
                                    </div>
                                    <div class="mb-3">
                                        <label for="Des" class="my-2 ">Date Test Car</label>
                                        <input type="date" class="form-control border-dark" value="" placeholder="" name="DATETEST" >
                                    </div>
                                    <div class="mb-3">
                                        <label for="Des" class="my-2 ">Description</label>
                                        <input type="text" class="form-control border-dark" value="" placeholder="Enter Description" name="DES" >
                                    </div>

                                    <div class="mb-4 text-center">
                                        <button type="submit" name="btnAction" value="save" class="btn btn-outline-primary border-3">Save</button>
                                        <a href="HomeServlet" name="btnAction" class="btn btn-outline-secondary border-3">Cancel</a> 
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>

                    <!--        </div>-->



                    <!-- Footer -->
                    <footer id="footer">
                        <div class="inner">
                            <section>
                        <h2>Contact Us</h2>
                        <form method="post" action="AddMessageServlet">
                            <div class="fields">
                                <div class="field half">
                                    <input type="text" name="NameN" id="name" placeholder="Name" />
                                </div>

                                <div class="field half">
                                    <input type="text" name="EmailN" id="email" placeholder="Email" />
                                </div>
                                <div class="field">
                                    <textarea name="Note" id="message" rows="3" placeholder="Notes"></textarea>
                                </div>

                                <div class="field text-right">
                                    <label>&nbsp;</label>

                                    <ul class="actions">
                                        <li><input type="submit" value="Send Message" class="primary" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>
                            <section>
                                <h2>Contact Info</h2>

                                <ul class="alt">
                                    <li><span class="fa fa-envelope-o"></span> <a href="#">contact@company.com</a></li>
                                    <li><span class="fa fa-phone"></span> +1 333 4040 5566 </li>
                                    <li><span class="fa fa-map-pin"></span> 212 Barrington Court New York, ABC 10001 United States of America</li>
                                </ul>

                                <h2>Follow Us</h2>

                                <ul class="icons">
                                    <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
                                    <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                                    <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
                                    <li><a href="#" class="icon style2 fa-linkedin"><span class="label">LinkedIn</span></a></li>
                                </ul>
                            </section>

<!--                            <ul class="copyright">
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
