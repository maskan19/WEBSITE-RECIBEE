<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<style type="text/css">
.fp {
	maring: auto;
}
</style>
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

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>FIND EMAIL</h2>
						<div class="breadcrumb__option">
							<span class="glyphicon glyphicon-home"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- FindPassWord Section Begin -->
	<div class="container">
		<div class="row">
			<div class="fp">
				<div>
					<h3>비밀번호 찾기</h3>
					<p>등록한 회원정보 또는 본인인증으로 비밀번호를 찾을 수 있습니다.</p>
				</div>
				<div class="container-1">
					<strong>등록된 회원정보로 찾기</strong><br> <small>회원 가입 시 등록한
						정보를 정확히 입력해주세요.</small>
					<form action="#" method="POST">
						<div>
							<label> <input type="text" name="mem_id"
								placeholder="이메일" required></label>
						</div>
						<div>
							<label> <input type="text" name="mem_name"
								placeholder="이름" required></label>
						</div>
						<div>
							<label> <input type="text" name="mem_bir"
								placeholder="생년월일" required>
							</label>
						</div>
						<div>
							<label>
								<button type="submit">비밀번호 찾기</button>
							</label>
						</div>
					</form>
				</div>

				<hr>
				<div class="container-2">
					<strong>본인인증 수단으로 찾기</strong><br> <small>아이디 회원 후
						본인인증을 선택해주세요.</small>
					<form action="#" method="POST">
						<div>
							<label> <input type="text" name="user_id"
								placeholder="아이디" required>
							</label> <label>
								<button type="submit">확인</button>
							</label>
						</div>
						<div>
							</a> <a href="#" target="_blank"> <img src=""
								title="휴대폰인증" alt="휴대폰인증">
							</a>
						</div>

						<div>
							<label>
								<button type="submit">비밀번호 찾기</button>
							</label>
						</div>
					</form>
				</div>

				<p>
					<small>위 방법으로 아이디를 찾을 수 없는 경우 <a href="../cs.jsp"
						target="_blank">고객센터</a>에 문의해주세요.
					</small>
				</p>
			</div>
		</div>
	</div>
	<!-- FindPassWord Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
</body>
</html>