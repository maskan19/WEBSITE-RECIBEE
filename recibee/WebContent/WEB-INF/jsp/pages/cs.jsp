<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="zxx">

	<head>
		<!-- Meta Font Css Styles -->
		<jsp:include page="../common/csslink.jsp"></jsp:include>
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
									<form action="<%=request.getContextPath()%>/jsp/Search.do">
								<div class="hero__search__categories dropdown">
									<select name="feild" class="dropdown" placeholder="All Category">
										<option value="all" selected>All Category</option>
										<option value="recipe">레시피</option>
										<option value="prod">상품</option>
										<option value="board4">요리 팁 게시판</option>
										<option value="board5">웃긴 요리 게시판</option>
									</select>
								</div>
								<input type="text" name="keyword" placeholder="What do you need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
								</div>
							</div>
						</div>
						<div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
							<div class="hero__text">
								<span>자주 묻는 질문</span>
								<h2>F A Q</h2>
								<p>Ready-made Question for you</p>
								<a href="<%=request.getContextPath()%>/jsp/PostFAQ.do" class="primary-btn">바로가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Hero Section End -->

		<!-- Contact Section Begin -->
		<section class="contact spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 text-center">
						<div class="contact__widget">
							<span class="icon_phone"></span>
							<h4>Phone</h4>
							<p>+81 42-222-8201</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 text-center">
						<div class="contact__widget">
							<span class="icon_pin_alt"></span>
							<h4>Address</h4>
							<p>대전광역시 중구 <br>중앙로 76 영민빌딩 3층</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 text-center">
						<div class="contact__widget">
							<span class="icon_clock_alt"></span>
							<h4>Open time</h4>
							<p>9:00 am to 22:00 pm</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 text-center">
						<div class="contact__widget">
							<span class="icon_mail_alt"></span>
							<h4>Email</h4>
							<p>밥해먹조@ddit.or.kr</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Contact Section End -->
		
		<!-- Map Begin -->
		<div class="map">
			<iframe
				src="https://maps.google.com/maps?q=%EC%A4%91%EC%95%99%EB%A1%9C76&t=&z=17&ie=UTF8&iwloc=&output=embed"
				height="500" style="border:0;" allowfullscreen="false" aria-hidden="false" tabindex="0"></iframe>
			<div class="map-inside">
				<i class="icon_pin"></i>
				<div class="inside-widget">
					<h4>DDIT</h4>
					<ul>
						<li>Phone: +81 42-222-8201</li>
						<li>Add: 대전광역시 중구 <br>중앙로 76 영민빌딩 3층</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Map End -->

		<!-- Contact Form Begin -->
		<!-- <div class="contact-form spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="contact__form__title">
							<h2>상담원과 연결하기</h2>
						</div>
					</div>
				</div>
				<form action="#">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<input type="text" placeholder="e-mail ID">
						</div>
						<div class="col-lg-6 col-md-6">
							<input type="text" placeholder="Contact">
						</div>
						<di class="col-lg-12 text-center">
							<textarea placeholder="Trouble / Question"></textarea>
							<button type="submit" class="site-btn">CONNECT</button>
					</div>
				</form>
			</div>
		</div> -->
		<!-- Contact Form End -->

		<!-- Footer Section Begin -->
		<jsp:include page="../common/footer.jsp"></jsp:include>
		<!-- Footer Section End -->

		<!-- Js Plugins -->
		<jsp:include page="../common/jslink.jsp"></jsp:include>

	</body>

	</html>