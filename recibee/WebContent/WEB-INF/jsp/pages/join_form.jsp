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

	<script src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>

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
									Email ID<span>*</span><span class="checker"></span>
								</p>
								<input type="text" name="mem_id" id="mem_id" onkeypress="return MoveTab(this, event)">
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호<span>*</span><span class="checker"></span>
										</p>
										<input type="password" name="mem_pass" id="mem_pass" onkeypress="return MoveTab(this, event)">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											비밀번호 확인<span>*</span><span class="checker"></span>
										</p>
										<input type="password" name="mem_dcpass" id="mem_dcpass" onkeypress="return MoveTab(this, event)">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											이름<span>*</span><span class="checker"></span>
										</p>
										<input type="text" name="mem_name" id="mem_name" onkeypress="return MoveTab(this, event)">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											전화번호<span>*</span><span class="checker"></span>
										</p>
										<div class="tel__input">
										<input type="text" name="mem_tel1" id="mem_tel1" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onkeypress="return MoveTab(this, event)">
										<input type="text" name="mem_tel2" id="mem_tel2" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onkeypress="return MoveTab(this, event)">
										<input type="text" name="mem_tel3" id="mem_tel3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" onkeypress="return MoveTab(this, event)">
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-4">
									<div class="checkout__input">
										<p>
										별명<span>*</span><span class="checker"></span>
										</p>
										<input type="text" name="mem_ali" id="mem_ali">
									</div>
								</div>
								<div class="col-lg-4">
									<div class="checkout__input">
										<p>
										성별<span>*</span><span class="checker"></span>
										</p>
										<div class="space__around">
											<label class="radio__input">
												<input type="radio" name="mem_gen" id="mem_gen" value="M" checked>
											<span>남</span>
										</label>
											<label class="radio__input">
												<input type="radio" name="mem_gen" id="mem_gen" value="F">
											<span>여</span>
											</label>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="checkout__input">
										<p>
										생년월일<span>*</span><span class="checker"></span>
										</p>
										<input type="date" name="mem_bir" id="mem_bir" onkeypress="return MoveTab(this, event)">
									</div>
								</div>
							</div>
							
							<br><br>
							<div class="div__flex__center ">
								<div class="button__center">
								<button type="submit" class="site-btn" disabled>등록</button>
								</div>
							</div>
							<br><br>
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
	<script src="../js/joinchecker.js"></script>

</body>

</html>