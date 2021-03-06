<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="zxx">

  <head>
    <!-- Meta Font Css Styles -->
    <jsp:include page="../common/csslink.jsp"></jsp:include>
  </head>

  <body oncontextmenu='return false' ondragstart='return false' onselectstart='return false'>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
   	<!-- Humberger Begin -->
	<jsp:include page="../common/humberger.jsp"></jsp:include>
	<!-- Humberger Section End -->

    <div class="div__flex__center">
      <div class="div__login__box section-title">
        <br><br><br><br>
        <a href="<%=request.getContextPath()%>/jsp/Index.do"><img src="img/logo.png" alt=""></a>
        <br><br><br>
        <div class="footer__widget">
        
        <p><%=request.getAttribute("warnmsg")!=null ? "ID혹은 PW가 잘못되었습니다." : ""%></p>
        <br>
          <form method="post" action="<%=request.getContextPath()%>/jsp/Session.do">
            <input type="text"  name="mem_id" id="mem_id"placeholder="E-MAIL ID">
            <input type="password" name="mem_pass" id="mem_pass" placeholder="PASSWORD">
            <button type="submit" class="site-btn">LOGIN</button>
          </form> 
          <br><br>
          <h6><a class="site-btn" href="<%=request.getContextPath()%>/jsp/Agreement.do">Join Now</a></h6>
          <h6><a class="site-btn" href="<%=request.getContextPath()%>/jsp/FindEmail.do">Find out ID</a></h6>
          <h6><a class="site-btn" href="<%=request.getContextPath()%>/jsp/FindPw.do">Find out PW</a></h6>
          <br><br>
          <div class="footer__widget__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
          </div>
          <br><br><br><br>
        </div>
      </div>
    </div>

    <!-- Footer Section Begin -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <jsp:include page="../common/jslink.jsp"></jsp:include>

  </body>

  </html>