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
	<!-- Humberger Begin -->
	<jsp:include page="../common/humberger.jsp"></jsp:include>
	<!-- Humberger SectionEnd -->

	  <div class="div__flex__center">
	  <div class="button__center">
	     <br><br><br><br>
        <a href="<%=request.getContextPath()%>/jsp/Index.do"><img src="img/logo.png" alt=""></a>
		</div>	   
	   </div>

	<script
		src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>회원가입</h4>
				<form action="<%=request.getContextPath()%>/jsp/InsertMember.do">
					<div class="row">
						<div class="col-lg-12 ">
							<div class="checkout__input">
								<p>
									Email ID<span>*</span>
								</p>
								<input type="text" name="mem_id" id="mem_id">
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호<span>*</span>
										</p>
										<input type="password" name="mem_pass" id="mem_pass">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호 확인<span>*</span>
										</p>
										<input type="password" name="mem_pass" id="mem_pass">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											성명<span>*</span>
										</p>
										<input type="text" name="mem_name" id="mem_name">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											별명<span>*</span>
										</p>
										<input type="text" name="mem_ali" id="mem_ali">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>생년월일</p>
										<input type="date" name="mem_bir" id="mem_bir">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>성별</p>
										<input type="text" name="mem_gen" id="mem_gen">
									</div>
								</div>
							</div>
							<div class="div__flex__center">
								<div class="button__center">
								<button type="submit" class="site-btn">등록</button>
								</div>
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