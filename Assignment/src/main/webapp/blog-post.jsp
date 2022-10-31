<%-- 
    Document   : blog-post
    Created on : Jul 12, 2022, 7:55:57 PM
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
                    <h1>${Blog.title}</h1>
                    <p> ${Blog.namePost} &nbsp;|&nbsp; ${Blog.datePost}</p>
                    <div class="image main">
                        <img src="${Blog.imageURL}" class="img-fluid" alt="" />
                    </div>

                    <p>${Blog.description}</p>

                </div>
            </div>

            <!-- Footer -->
            <footer id="footer">
                <div class="inner">
                    <section>
                        <h2>Leave a comment</h2>

                        <form method="post" action="#">
                            <div class="fields">
                                <div class="field half">
                                    <input type="text" name="name" id="name" placeholder="Name" />
                                </div>

                                <div class="field half">
                                    <input type="text" name="email" id="email" placeholder="Email" />
                                </div>

                                <div class="field">
                                    <textarea name="message" id="message" rows="3" placeholder="Your message"></textarea>
                                </div>

                                <div class="field text-right">
                                    <label>&nbsp;</label>

                                    <ul class="actions">
                                        <li><input type="submit" value="Submit" class="primary" /></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>
                    <section>

                        <h2>Share This</h2>

                        <ul class="icons">
                            <li><a href="#" class="icon style2 fa-twitter"><span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon style2 fa-linkedin"><span class="label">LinkedIn</span></a></li>
                            <li><a href="#" class="icon style2 fa-behance"><span class="label">Behance</span></a></li>
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