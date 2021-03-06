<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>JOIN</h2>
						<!-- <div class="breadcrumb__option">
							<a href="./index.html">Home</a>
							<span>Checkout</span>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->


	<script
		src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<!-- <div class="row">
				<div class="col-lg-12">
					<h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
					</h6>
				</div>
			</div> -->
			<div class="checkout__form">
				<h4>회원가입</h4>
				<form action="#">
					<div class="row">
						<div class="col-lg-12 ">

							<div class="checkout__input">
								<p>
									Email ID<span>*</span>
								</p>
								<input type="text">
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호<span>*</span>
										</p>
										<input type="password">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호 확인<span>*</span>
										</p>
										<input type="password">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											성명<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											별명<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>나이</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>성별</p>
										<input type="text">
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<input type="submit" value="등록">
							</div>

							<div class="row"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>