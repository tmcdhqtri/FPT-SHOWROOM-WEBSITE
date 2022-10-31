<%-- 
    Document   : cars
    Created on : Jul 12, 2022, 7:58:22 PM
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
        <!--        <link
                    href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
                    rel="stylesheet"
                    />-->
        <!--        <link
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
                    rel="stylesheet"
                    />
                 Google Fonts 
                <link
                    href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
                    rel="stylesheet"
                    />-->

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
                    <h1>Search for car</h1>

                    <div class="image main">
                        <img src="images/banner-image-7-1920x500.jpg" class="img-fluid" alt="" />
                    </div>
                    <form action="CarServlet" method="post">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="input-group">
                                    <input type="input" name="searchCar" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" style="height: 100%" />
                                    <input type="submit" class="btn btn-outline-primary"></button>
                                </div>

                                <!--                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Used/New:</label>
                                
                                                                    <select>
                                                                        <option value="">All</option>
                                                                        <option value="new">New vehicle</option>
                                                                        <option value="used">Used vehicle</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Vehicle Type:</label>
                                
                                                                    <select>
                                                                        <option value="">--All --</option>
                                                                        <option value="">--All --</option>
                                                                        <option value="">--All --</option>
                                                                        <option value="">--All --</option>
                                                                        <option value="">--All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Make:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Model:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Price:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Mileage:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Engine size:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Power:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Fuel:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Gearbox:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Doors:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>
                                
                                                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label class="m-n">Number of seats:</label>
                                
                                                                    <select>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                        <option value="">-- All --</option>
                                                                    </select>
                                                                </div>
                                
                                                                <br>
                                                            </div>-->
                            </div>
                        </div>
                    </form>

                    <br>

                    <!-- Cars -->
                        <%
                            CarDAO dao = new CarDAO();
                            List<CarIntro> list = dao.getAllCar();
                            request.setAttribute("CARNAME", list);
                        %>
                    <section class="tiles">
                        <c:forEach items="${LISTSEARCH}" var="car">
                        <article class="style1">
                            <span class="image">
                                <img src="${car.imageURL}" alt=""  width="350" height="200"/>
                            </span>
                            <a href="CarDetailServlet?carID=${car.carID}">
                                <h2>${car.carID}</h2>
                                <p><del>${car.price}</del> <strong>${car.price-car.price*0.05}</strong></p>

                                <p>
                                    <i class="fa fa-dashboard"></i> ${car.engineSize} &nbsp;&nbsp;&nbsp;&nbsp;
                                    <i class="fa fa-cube"></i> ${car.power}&nbsp;&nbsp;&nbsp;&nbsp;
                                    <i class="fa fa-cog"></i> ${car.cylinders}
                                </p>
                            </a>
                        </article>
                        </c:forEach>
<!--                        <article class="style2">
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
                        </article>-->
                    </section>
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