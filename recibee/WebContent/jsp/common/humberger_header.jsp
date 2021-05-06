<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</body>
<body oncontextmenu='return true' ondragstart='return true' onselectstart='return true'>
    
    
<!-- Humberger Begin -->

   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
         <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
      </div>
      <div class="humberger__menu__cart">
         <ul>
            <li><a href="#"><i class="fa fa-heart"></i><span>9</span></a></li>
            <li><a href="../pages/shoping-cart.jsp"><i class="fa fa-shopping-cart"></i> <span>3</span></a></li>
            <li><a href="#"><i class="fa fa-bell"></i> <span>5</span></a></li>
         </ul>
         <div class="header__top__right__auth">
            <a href="./myPage.jsp"><i class="fa fa-user"></i> My Page</a>
         </div>
         <div class="header__top__right__auth">
            <a href="./login.jsp"><i class="fa fa-user"></i> Login</a>
         </div>
      </div>
      <nav class="humberger__menu__nav mobile-menu">
         <ul>
            <li class="active"><a href="#">Recipe</a></li>
            <li><a href="../pages/blog.jsp">Board1</a>
               <ul class="header__menu__dropdown">
                  <li><a href="../pages/blog-details.jsp">Blog Details</a></li>
               </ul>
            </li>
            <li><a href="../pages/shop-grid.jsp">Shop</a>
               <ul class="header__menu__dropdown">
                  <li><a href="../pages/shop-grid.jsp">Shop Grid</a></li>
                  <li><a href="../pages/shop-details.jsp">Shop Details</a></li>
                  <li><a href="../pages/shoping-cart.jsp">Shoping Cart</a></li>
                  <li><a href="../pages/checkout.jsp">Check Out</a></li>
               </ul>
            </li>
            <li><a href="./cs.jsp">CS</a></li>
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

   <!-- Header Section Begin -->
   <header class="header">
      <div class="header__top">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__left">
                     <ul>
                        <li><i class="fa fa-envelope"></i>밥해먹조@ddit.com</li>
                        <li>Free Shipping for all Order of $99</li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__right">
                     <div class="header__top__right__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                     </div>
                     <div class="header__cart">
                        <ul>
                           <li><a href="#"><i class="fa fa-heart"></i><span> 1</span></a></li>
                           <li><a href="#"><i class="fa fa-shopping-cart"></i> <span>3</span></a></li>
                           <li><a href="#"><i class="fa fa-bell"></i> <span>5</span></a></li>
                        </ul>
                     </div>
                     <div class="header__top__right__auth">
                        <a href="./myPage.jsp"><i class="fa fa-user"></i> My Page</a>
                     </div>
                     <div class="header__top__right__auth">
                        <a href="./login.jsp"><i class="fa fa-user"></i> Login</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="header__logo">
                  <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
               </div>
            </div>
            <div class="col-lg-9">
               <nav class="header__menu">
                  <ul>
                     <li><a href="#">Recipe</a></li>
                     <li><a href="./blog.jsp">Board</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="./blog-details.jsp">Post</a></li>
                        </ul>
                     </li>
                     <li><a href="./shop-grid.jsp">Shop</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="./shop-grid.jsp">Shop Grid</a></li>                    
                           <li><a href="./shop-details.jsp">Shop Details</a></li>
                           <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                           <li><a href="./checkout.jsp">Check Out</a></li>
                        </ul>
                     </li>
                     <li><a href="#">NEWS</a></li>
                     <li><a href="./cs.jsp">CS</a></li>
                  </ul>
               </nav>
            </div>
         </div>
         <div class="humberger__open">
            <i class="fa fa-bars"></i>
         </div>
      </div>
   </header>
   <!-- Header Section End -->