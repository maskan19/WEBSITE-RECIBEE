<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
.fp {
	margin : auto;
	margin-top : 7%;
	margin-bottom: 7%;
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
						<h2>FIND PASSWORD</h2>
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
					<p>등록한 이메일로 비밀번호를 찾을 수 있습니다.</p>
				</div>
				<div class="container-1">
					<strong>등록된 이메일로 찾기</strong><br> <small>회원 가입 시 등록한
						이메일을 정확히 입력해주세요.</small>
					<form action="<%=request.getContextPath()%>/jsp/FindPwResult.do" method="POST">
						<div>
							<label> <input type="text" name="mem_id"
								placeholder="이메일" required></label>
						</div>
						<div>
							<label>
								<button type="submit">비밀번호 찾기</button>
							</label>
						</div>
					</form>
				</div>
				
				<p>
					<small>위 방법으로 아이디를 찾을 수 없는 경우 <a href="<%=request.getContextPath()%>/jsp/CS.do"
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