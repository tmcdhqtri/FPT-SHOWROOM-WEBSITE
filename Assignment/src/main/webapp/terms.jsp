<%-- 
    Document   : terms
    Created on : Jul 12, 2022, 8:00:49 PM
    Author     : Admin
--%>

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
<!--				<nav id="menu">
					<h2>Menu</h2>
					<ul>
						<li><a href="index.html">Home</a></li>

						<li><a href="cars.html">Cars</a></li>

						<li>
							<a href="#" class="dropdown-toggle">About</a>

							<ul>
								<li class="active"><a href="about.html">About Us</a></li>
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
							<h1>Terms</h1>

							<div class="image main">
								<img src="images/banner-image-5-1920x500.jpg" class="img-fluid" alt="" />
							</div>
							
							<h2 class="m-n">1.Lorem ipsum dolor sit amet.</h2>
							<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique.</p>

							<h2 class="m-n">2.Lorem ipsum dolor sit amet.</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tristique libero eu nibh porttitor fermentum. Nullam venenatis erat id vehicula viverra. Nunc ultrices eros ut ultricies condimentum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque aliquam maximus risus, vel venenatis mauris vehicula hendrerit.</p>

							<h2 class="m-n">3.Lorem ipsum dolor sit amet.</h2>
							<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>

							<h2 class="m-n">4.Lorem ipsum dolor sit amet.</h2>
							<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>

							<h2 class="m-n">5.Lorem ipsum dolor sit amet.</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tristique libero eu nibh porttitor fermentum. Nullam venenatis erat id vehicula viverra. Nunc ultrices eros ut ultricies condimentum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque aliquam maximus risus, vel venenatis mauris vehicula hendrerit.</p>
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

<!--							<ul class="copyright">
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