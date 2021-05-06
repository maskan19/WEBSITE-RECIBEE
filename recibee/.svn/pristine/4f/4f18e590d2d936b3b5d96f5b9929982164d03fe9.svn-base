<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

	<!-- FindEmail Section Begin -->
	<div class="container">
		<div class="row">
			<div class="fe">
				<h4>회원정보에 등록한 이름과 생년월일로 이메일찾기</h4>
				<p>회원정보에 등록한 이름과 이메일이 같아야 이메일을 찾을 수 있습니다.</p>
				<br>
				<form method="post" action="<%=request.getContextPath()%>/jsp/FindEmail.do">
					<label>이메일</label>
					<input type="text" name="mem_email"><br><br>
					<label>생년월일</label>
					<input type="text" name="mem_bir"><br>
					<br><br><br>
					<div class="button">
						<input type="submit" value="전송" class="btn btn-warning btn-primary">
						<input type="reset" value="재설정" class="btn btn-warning btn-primary">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- FindEmail Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
</body>
</html>