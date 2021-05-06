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

    <div class="div__flex__center">
      <div class="div__login__box section-title">
        <br><br><br><br>
        <a href="./index.html"><img src="img/logo.png" alt=""></a>
        <br><br><br><br>
        <div class="footer__widget">
          <form action="#">
            <input type="text" placeholder="E-MAIL ID">
            <input type="password" placeholder="PASSWORD">
            <button type="submit" class="site-btn">LOGIN</button>
          </form> 
          <br><br>
          <h6><a class="site-btn" href="./join.jsp">Join Now</a></h6>
          <h6><a class="site-btn" href="./FindEmail.jsp">Find out EMAIL</a></h6>
          <h6><a class="site-btn" href="./FindPw.jsp">Find out PW</a></h6>
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