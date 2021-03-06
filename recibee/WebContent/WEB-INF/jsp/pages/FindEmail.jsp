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
	<jsp:include page="../common/hero.jsp"></jsp:include>
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
				<h4>회원정보에 등록한 이름과 전화번호로 이메일찾기</h4>
				<p>회원정보에 등록한 이름과 전화번호가 같아야 이메일을 찾을 수 있습니다.</p>
				<br>
				<form method="post" action="<%=request.getContextPath()%>/jsp/FindEmailResult.do">
					<div class="form-group">
						<label>이름</label> 
						<input id="name" type="text" name="mem_name">
						<span class="sp"></span>
					</div><br><br> 
					<div class="form-group">
						<label>전화번호</label> 
						<input id="tel" type="text"name="mem_tel">
						<span class="sp"></span>
					</div><br><br><br>

					<div class="button">
						<input id="find" type="submit" value="이메일찾기" class="btn btn-warning btn-primary">
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