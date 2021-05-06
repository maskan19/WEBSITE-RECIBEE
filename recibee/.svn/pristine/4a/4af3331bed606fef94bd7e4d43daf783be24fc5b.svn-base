<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</body>
<body oncontextmenu='return true' ondragstart='return true' onselectstart='return true'>
    
    
<!-- Humberger Begin -->
	<%
		MemberVO member = null;
		if (session.getAttribute("Member") != null) {
			member = (MemberVO) session.getAttribute("Member");
		}
	%>
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
         <a href="<%=request.getContextPath()%>/jsp/Index.do"><img src="img/logo.png" alt=""></a>
      </div>
      <div class="humberger__menu__cart">
         <ul>
            <li><a href="#"><i class="fa fa-heart"></i><span>1</span></a></li>
            <li><a href="<%=request.getContextPath()%>/jsp/Cart.do"><i class="fa fa-shopping-cart"></i> <span>3</span></a></li>
            <li><a href="#"><i class="fa fa-bell"></i> <span>5</span></a></li>
         </ul>
         
			</div>
         <div class="header__top__right__auth header__top__right__language">
				<%
					String id = null;
					if (member != null) {
						id = member.getMem_id();
					}
					if (id != null) {
				%>
				 <div><a href="<%=request.getContextPath()%>/jsp/MyPage.do"><i class="fa fa-user"></i> My Page</a></div>
	            <span class="arrow_carrot-down"></span>
	            <ul>
	                <li><a href="<%=request.getContextPath()%>/jsp/Logout.do">Logout</a></li>
	                <li><a href="#">Mypage어쩌고</a></li>
	            </ul>
				<%
					} else {
				%>
				<a href="<%=request.getContextPath()%>/jsp/Login.do"><i class="fa fa-user"></i> Login</a>
				<%
					}
				%>
      </div>
      <nav class="humberger__menu__nav mobile-menu">
         <ul>
            <li class="active"><a href="#">Recipe</a></li>
            <li><a href="../pages/blog.jsp">Board1</a>
               <ul class="header__menu__dropdown">
                  <li><a href="../pages/blog-details.jsp">Blog Details</a></li>
               </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop</a>
               <ul class="header__menu__dropdown">
                   <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop Grid</a></li>
                  <li><a href="<%=request.getContextPath()%>/jsp/Cart.do">Shoping Cart</a></li>
               </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/jsp/CS.do">CS</a></li>
         </ul>
      </nav>
      <div id="mobile-menu-wrap"></div>
      <div class="header__top__right__social">
         <a href="#"><i class="fa fa-facebook"></i></a>
         <a href="#"><i class="fa fa-instagram"></i></a>
         <a href="#"><i class="fa fa-youtube-play"></i></a>
      </div>
      <div class="humberger__menu__contact">
         <ul>
            <li><i class="fa fa-envelope"></i>밥해먹조@ddit.com</li>
         </ul>
      </div>
   </div>
   <!-- Humberger End -->
	<div class="humberger__open">
		<i class="fa fa-bars"></i>
	</div>