<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>

<meta http-equiv="refresh" content="5; url=<%=request.getContextPath()%>/jsp/Index.do">

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
        
        <br><br><br><br>
        <h4>회원가입 완료</h4>
        <br><br><br><br>
        <h4>잠시후 메인페이지로 이동합니다.</h4>
        <br><br><br><br>
		</div>	   
	</div>

	<script
		src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>