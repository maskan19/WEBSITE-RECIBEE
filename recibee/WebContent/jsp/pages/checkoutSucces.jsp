<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/shop-grid.js"></script>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Humberger Header Section Begin -->
	<jsp:include page="../common/humberger_header.jsp"></jsp:include>
	<!-- Humberger Header SectionEnd -->
	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__search">
						<div class="div__top__layer">
							<div class="hero__search__form">
								<form action="#">
									<div class="hero__search__categories">
										All Categories <span class="arrow_carrot-down"></span>
										<ul class="header__menu__dropdown">
											<li>Recipe</li>
											<li>Board1</li>
											<li>Shop</li>
										</ul>
									</div>
									<input type="text" placeholder="What do yo u need?">
									<button type="submit" class="site-btn">SEARCH</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->
	
	
	
	
	
	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>