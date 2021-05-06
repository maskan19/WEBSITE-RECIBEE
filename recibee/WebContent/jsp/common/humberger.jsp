<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
</body>
<body oncontextmenu='return true' ondragstart='return true'
	onselectstart='return true'>


	<!-- Humberger Begin -->

	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="./index.jsp"><img src="img/logo.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<li><a href="#"><i class="fa fa-heart"></i><span>1</span></a></li>
				<li><a href="../pages/shoping-cart.jsp"><i
						class="fa fa-shopping-cart"></i> <span>3</span></a></li>
				<li><a href="#"><i class="fa fa-bell"></i> <span>5</span></a></li>
			</ul>
			<div class="header__top__right__auth">
				<a href="./login.jsp"><i class="fa fa-user"></i> Login</a>
			</div>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="#">Recipe</a></li>
				<li><a href="../pages/blog.jsp">Board1</a>
					<ul class="header__menu__dropdown">
						<li><a href="../pages/blog-details.jsp">Blog Details</a></li>
					</ul></li>
				<li><a href="../pages/shop-grid.jsp">Shop</a>
					<ul class="header__menu__dropdown">
						<li><a href="../pages/shop-grid.jsp">Shop Grid</a></li>
						<li><a href="../pages/shop-details.jsp">Shop Details</a></li>
						<li><a href="../pages/shoping-cart.jsp">Shoping Cart</a></li>
						<li><a href="../pages/checkout.jsp">Check Out</a></li>
					</ul></li>
				<li><a href="./cs.jsp">CS</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i>밥해먹조@ddit.com</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->
	<div class="humberger__open">
		<i class="fa fa-bars"></i>
	</div>