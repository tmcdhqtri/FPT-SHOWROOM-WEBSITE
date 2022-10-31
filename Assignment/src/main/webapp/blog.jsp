<%-- 
    Document   : blog
    Created on : Jul 12, 2022, 7:56:25 PM
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
            
                                                                    <li><a href="cars.html">Cars</a></li>
            
                                                                    <li>
                                                                            <a href="#" class="dropdown-toggle">About</a>
            
                                                                            <ul>
                                                                                    <li><a href="about.html">About Us</a></li>
                                                                                    <li><a href="team.html">Team</a></li>
                                                                                    <li><a href="blog.html" class="active">Blog</a></li>
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
                    <h1>Blog</h1>

                    <div class="image main">
                        <img src="images/banner-image-6-1920x500.jpg" class="img-fluid" alt="" />
                    </div>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="row">
                                    <c:forEach items="${listBlog}" begin="1" end="4" var="b">
                                    <div class="col-sm-6 text-center">
                                        <img src="${b.imageURL}" alt=""  width="400px" height="250px"/>
                                <h2 class="m-n"><a href="BlogDetailServlet?blogID=${b.blogID}">${b.title}</a></h2>

                                <p> ${b.namePost} &nbsp;|&nbsp; ${b.datePost}</p>
                                    </div>
                                        
                                    </c:forEach>
<!--                                    <div class="col-sm-6 text-center">
                                        <img src="images/blog-2-720x480.jpg" class="img-fluid" alt="" />

                                        <h2 class="m-n"><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></h2>

                                        <p> John Doe &nbsp;|&nbsp; 12/06/2020 10:30</p>
                                    </div>

                                    <div class="col-sm-6 text-center">
                                        <img src="images/blog-3-720x480.jpg" class="img-fluid" alt="" />

                                        <h2 class="m-n"><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></h2>

                                        <p> John Doe &nbsp;|&nbsp; 12/06/2020 10:30</p>
                                    </div>

                                    <div class="col-sm-6 text-center">
                                        <img src="images/blog-3-720x480.jpg" class="img-fluid" alt="" />

                                        <h2 class="m-n"><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></h2>

                                        <p> John Doe &nbsp;|&nbsp; 12/06/2020 10:30</p>
                                </div>
                            </div>

                            <div class="col-3">
                                <div class="form-group">
                                    <h4>Blog Search</h4>
                                </div>

                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon2">

                                        <span class="input-group-addon"><a href="#"><i class="fa fa-search"></i></a></span>
                                    </div>
                                </div>

                                <br>

                                <p><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</a></p>

                                <p><a href="#">Non, magni, sequi. Explicabo illum quas debitis ut.</a></p>

                                <p><a href="#">Vatae expedita deleniti optio ex adipisci . </a></p>

                                <p><a href="#">Soluta non modi dolorem voluptates dolor laborum.</a></p>
                            </div>-->
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