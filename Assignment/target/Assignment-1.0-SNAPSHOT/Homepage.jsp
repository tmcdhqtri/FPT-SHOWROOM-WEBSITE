<%-- 
    Document   : Homepage
    Created on : Jul 10, 2022, 5:01:41 PM
    Author     : Admin
--%>

<%@page import="model.CarIntro"%>
<%@page import="java.util.List"%>
<%@page import="dao.CarDAO"%>
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
                    About Us 
                    <header id="inner">
                        <h1>Find you new car!</h1>
                        <p>Find your best car in this website. All car you need are here!!</p>
                    </header>

                    <br>

                    <h2 class="h2">Featured Cars</h2>

                    Cars 
                    <section class="tiles">
                        <c:forEach items="${listCar}" begin="1" end="6" var="c">
                            <article class="style1">
                                <span class="image">
                                    <img src="${c.imageURL}" alt=""  width="107" height="200"/>
                                </span>
                                <a href="CarDetailServlet?carID=${c.carID}">
                                    <h2>${c.carID}</h2>

                                    <p><del>$${c.price}</del> <strong>$${c.price-c.price*0.05}</strong></p>

                                    <p>
                                        <i class="fa fa-dashboard"></i> ${c.engineSize} &nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="fa fa-cube"></i> ${c.power}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="fa fa-cog"></i> ${c.cylinders}
                                    </p>
                                </a>
                            </article>
                            <!--                            <article class="style2">
                                                            <span class="image">
                                                                <img src="images/product-2-720x480.jpg" alt="" />
                                                            </span>
                                                            <a href="car-details.html">
                                                                <h2>Lorem ipsum dolor sit amet, consectetur</h2>
                            
                                                                <p><del>$11 999</del> <strong>$11 779</strong></p>
                            
                                                                <p>
                                                                    <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cube"></i> 1800 cc&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cog"></i> Manual
                                                                </p>
                                                            </a>
                                                        </article>
                                                        <article class="style3">
                                                            <span class="image">
                                                                <img src="images/product-3-720x480.jpg" alt="" />
                                                            </span>
                                                            <a href="car-details.html">
                                                                <h2>Lorem ipsum dolor sit amet, consectetur</h2>
                            
                                                                <p><del>$11 999</del> <strong>$11 779</strong></p>
                            
                                                                <p>
                                                                    <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cube"></i> 1800 cc&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cog"></i> Manual
                                                                </p>
                                                            </a>
                                                        </article>
                            
                                                        <article class="style4">
                                                            <span class="image">
                                                                <img src="images/product-4-720x480.jpg" alt="" />
                                                            </span>
                                                            <a href="car-details.html">
                                                                <h2>Lorem ipsum dolor sit amet, consectetur</h2>
                            
                                                                <p><del>$11 999</del> <strong>$11 779</strong></p>
                            
                                                                <p>
                                                                    <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cube"></i> 1800 cc&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cog"></i> Manual
                                                                </p>
                                                            </a>
                                                        </article>
                            
                                                        <article class="style5">
                                                            <span class="image">
                                                                <img src="images/product-5-720x480.jpg" alt="" />
                                                            </span>
                                                            <a href="car-details.html">
                                                                <h2>Lorem ipsum dolor sit amet, consectetur</h2>
                            
                                                                <p><del>$11 999</del> <strong>$11 779</strong></p>
                            
                                                                <p>
                                                                    <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cube"></i> 1800 cc&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cog"></i> Manual
                                                                </p>
                                                            </a>
                                                        </article>
                            
                                                        <article class="style6">
                                                            <span class="image">
                                                                <img src="images/product-6-720x480.jpg" alt="" />
                                                            </span>
                                                            <a href="car-details.html">
                                                                <h2>Lorem ipsum dolor sit amet, consectetur</h2>
                            
                                                                <p><del>$11 999</del> <strong>$11 779</strong></p>
                            
                                                                <p>
                                                                    <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cube"></i> 1800 cc&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <i class="fa fa-cog"></i> Manual
                                                                </p>
                                                            </a>
                                                        </article>  -->
                        </c:forEach>               
                    </section>

                    <p class="text-center"><a href="cars.jsp">View Cars &nbsp;<i class="fa fa-long-arrow-right"></i></a></p>

                    <br>

                    <!--                    <h2 class="h2">Testimonials</h2>
                    
                                        <div class="row">
                                            <div class="col-sm-6 text-center">
                                                <p class="m-n"><em>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt delectus mollitia, debitis architecto recusandae? Quidem ipsa, quo, labore minima enim similique, delectus ullam non laboriosam laborum distinctio repellat quas deserunt voluptas reprehenderit dignissimos voluptatum deleniti saepe. Facere expedita autem quos."</em></p>
                    
                                                <p><strong> - John Doe</strong></p>
                                            </div>
                    
                                            <div class="col-sm-6 text-center">
                                                <p class="m-n"><em>"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt delectus mollitia, debitis architecto recusandae? Quidem ipsa, quo, labore minima enim similique, delectus ullam non laboriosam laborum distinctio repellat quas deserunt voluptas reprehenderit dignissimos voluptatum deleniti saepe. Facere expedita autem quos."</em></p>
                    
                                                <p><strong>- John Doe</strong> </p>
                                            </div>
                                        </div>-->
                    <!--
                                        <p class="text-center"><a href="testimonials.html">Read More &nbsp;<i class="fa fa-long-arrow-right"></i></a></p>-->

                    <br>

                    <h2 class="h2">Blog</h2>

                    <div class="row">
                        <c:forEach items="${listBlog}" begin="1" end="3" var="b">
                            <div class="col-sm-4 text-center">
                                <img src="${b.imageURL}" alt=""  width="350" height="200"/>
                                <h2 class="m-n"><a href="BlogDetailServlet?blogID=${b.blogID}">${b.title}</a></h2>

                                <p> ${b.namePost} &nbsp;|&nbsp; ${b.datePost}</p>
                            </div>

                            <!--                        <div class="col-sm-4 text-center">
                                                        <img src="images/blog-2-720x480.jpg" class="img-fluid" alt="" />
                            
                                                        <h2 class="m-n"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></h2>
                            
                                                        <p> John Doe &nbsp;|&nbsp; 12/06/2020 10:30</p>
                                                    </div>
                            
                                                    <div class="col-sm-4 text-center">
                                                        <img src="images/blog-3-720x480.jpg" class="img-fluid" alt="" />
                            
                                                        <h2 class="m-n"><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></h2>
                            
                                                        <p> John Doe &nbsp;|&nbsp; 12/06/2020 10:30</p>
                                                    </div>-->
                        </c:forEach>
                    </div>

                    <p class="text-center"><a href="BlogServlet">Read More &nbsp;<i class="fa fa-long-arrow-right"></i></a></p>


                </div>
            </div>

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
                            <li><span class="fa fa-envelope-o"></span> <a href="#">${adminContact.email}</a></li>
                            <li><span class="fa fa-phone"></span> ${adminContact.phone} </li>
                            <li><span class="fa fa-map-pin"></span> ${adminContact.address}</li>
                        </ul>

                        <h2>Follow Us</h2>

                        <ul class="icons">
                            <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
                            <li><a href="#" class="icon style2 fa-linkedin"><span class="label">LinkedIn</span></a></li>
                        </ul>
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
