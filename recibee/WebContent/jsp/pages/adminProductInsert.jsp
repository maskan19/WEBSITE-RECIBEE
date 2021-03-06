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
	
	<!-- 관리자 물품등록페이지 -->
	<section class="contact-form spad">
		<div class="container">
			<div class="checkout__form">
			<h4>상품 등록 페이지</h4>
				<form action="#" method="post">
					<div class="row">
						<div class="col-lg-12 ">
							<div class="checkout__input">
								<p>
									상품명 <span>*</span>
								</p>
								<input type="text">
							</div>
						
							<div class="checkout__input">
								<p>
									상품분류 <span>*</span>
								</p>
								<input type="text">
							</div>
							
							<div class="checkout__input">
								<p>
									상품가격 <span>*</span>
								</p>
								<input type="text">
							</div>
							
							<div class="checkout__input">
								<p>
									상품설명<span>*</span>
								</p>
								<textarea placeholder="상품 설명을 작성해주세요"></textarea>
							</div>
							
							<div class="checkout__input">
								<p>
									첨부파일<span>*</span>
								</p>
								<input type="file">
							</div>
							
							<div class="checkout__input">
								<input type="submit" class="site-btn" value="등록">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	
	
	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>