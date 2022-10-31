<%-- 
    Document   : contact
    Created on : Jul 12, 2022, 7:59:39 PM
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
									<li><a href="blog.html">Blog</a></li>
									<li><a href="testimonials.html">Testimonials</a></li>
									<li><a href="faq.html">FAQ</a></li>
									<li><a href="terms.html">Terms</a></li>
								</ul>
							</li>
							<li><a href="contact.html" class="active">Contact Us</a></li>
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
							<h1>Contact Us</h1>
                                                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d979610.5798387507!2d107.1094475!3d16.444935!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fac4715b9a5%3A0xfc265f8fb1e6861a!2zVGjhur8gR2nhu5tpIFNpw6p1IFhlIEstU3VwcGVy!5e0!3m2!1sen!2s!4v1657909800505!5m2!1sen!2s" width="1350" height="550" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							<!--<span class="image main"><img src="images/map.jpg" alt="" /></span>-->
							<p>You can contact us directly via Gmail or via the phone number provided below the website. If you want to see the car in person, please come to our showroom via the map above to be able to see it live. We are happy that you can come and test our car.</p>
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

<!--										<div class="field">
											<input type="text" name="subject" id="subject" placeholder="subject" />
										</div>-->

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
<!--
							<ul class="copyright">
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