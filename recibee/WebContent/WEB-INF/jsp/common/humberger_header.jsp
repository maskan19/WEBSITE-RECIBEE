<%@page import="java.util.ArrayList"%>
<%@page import="vo.CartVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.DishVO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</body>
<body oncontextmenu='return true' ondragstart='return true' onselectstart='return true'>
    
    
<!-- Humberger Begin -->
	<%
		MemberVO member = null;
		List<DishVO> likeDish = null;
		int cart = 0;
		if (session.getAttribute("Member") != null) {
			member = (MemberVO) session.getAttribute("Member");
			likeDish = (List<DishVO>) session.getAttribute("LikeDish");
 			cart = (Integer)session.getAttribute("Cart");
		}
	%>
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
         <a href="<%=request.getContextPath()%>/jsp/Index.do"><img src="img/logo.png" alt=""></a>
      </div>
      <%
      if (member != null) {
      %>
      <div class="humberger__menu__cart">
         <ul>
            <li><a href="#"><i class="fa fa-heart"></i>
            <% if(likeDish !=null&&likeDish.size()!=0){ %>
            <span><%=likeDish.size()%></span>
            <%} %>
            </a></li>
            <li><a href="<%=request.getContextPath()%>/jsp/CartList.do"><i class="fa fa-shopping-cart"></i> 
            <% if(cart > 0){ %>
 			
            <span><%=cart%></span>
            <%} %>
            </a>
            </li>
         </ul>
			</div>
         <%} %>
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
<!-- 	                <li><a href="#">Mypage어쩌고</a></li> -->
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
                      <li><a href="<%=request.getContextPath()%>/jsp/RecipeMain.do">Recipe</a></li>
                     <li><a href="<%=request.getContextPath()%>/jsp/Board.do">Board</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="<%=request.getContextPath()%>/jsp/Board4.do">요리 팁 게시판</a></li>
                           <li><a href="<%=request.getContextPath()%>/jsp/Board5.do">웃긴 요리 게시판</a></li>
                        </ul>
                     </li>
                     <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop Grid</a></li>                    
                           <%-- <li><a href="<%=request.getContextPath()%>/jsp/CartList.do">Shoping Cart</a></li> --%>
                           <%
                  		if (session.getAttribute("Member") != null) {
          			%>
                  		<li><a href="<%=request.getContextPath()%>/jsp/CheckOut.do">Check Out</a></li>
          			<%		
          				}
                  	%>
                        </ul>
                        
                     </li>
                     
                     <li><a>NEWS</a>
                     	<ul class="header__menu__dropdown">
                    	   <li><a href="<%=request.getContextPath()%>/jsp/Board2.do">Notice</a></li>
                    	   <li><a href="<%=request.getContextPath()%>/jsp/Board3.do">Event</a></li>
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

   <!-- Header Section Begin -->
   <header class="header">
      <div class="header__top">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-6">
                  <div class="header__top__left">
                     <ul>
                        <li><i class="fa fa-envelope"></i>밥해먹조@ddit.com</li>
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
                      <%
				      if (member != null) {
				      %>
				      <div class="header__cart">
				         <ul>
				            <li><a href="#"><i class="fa fa-heart"></i>
				            <% if(likeDish !=null&&likeDish.size()!=0){ %>
				            <span><%=likeDish.size()%></span>
				            <%} %>
				            </a></li>
				            <li><a href="<%=request.getContextPath()%>/jsp/CartList.do"><i class="fa fa-shopping-cart"></i> 
				            <% if(cart > 0){ %>
				            <span><%=cart%></span>
				            <%} %>
				            </a>
				            </li>
				         </ul>
							</div>
				         <%} %>
				                   
                     <div class="header__top__right__auth header__top__right__language">
							<%
								if (member != null) {
									id = member.getMem_id();
								}
								if (id != null) {
							%>
							 <div><a href="<%=request.getContextPath()%>/jsp/MyPage.do"><i class="fa fa-user"></i> My Page</a></div>
			                <span class="arrow_carrot-down"></span>
			                <ul>
			                    <li><a href="<%=request.getContextPath()%>/jsp/Logout.do">Logout</a></li>
			                    
<!-- 			                    <li><a href="#">Mypage어쩌고</a></li> -->
			                </ul>
							<%
								} else {
							%>
							<a href="<%=request.getContextPath()%>/jsp/Login.do"><i class="fa fa-user"></i> Login</a>
							<%
								}
							%>
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
                  <a href="<%=request.getContextPath()%>/jsp/Index.do"><img src="img/logo.png" alt=""></a>
               </div>
            </div>
            <div class="col-lg-9">
               <nav class="header__menu">
                  <ul>
                      <li><a href="<%=request.getContextPath()%>/jsp/RecipeMain.do">Recipe</a></li>
                     <li><a href="<%=request.getContextPath()%>/jsp/Board.do">Board</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="<%=request.getContextPath()%>/jsp/Board4.do">요리 팁 게시판</a></li>
                           <li><a href="<%=request.getContextPath()%>/jsp/Board5.do">웃긴 요리 게시판</a></li>
                        </ul>
                     </li>
                     <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="<%=request.getContextPath()%>/jsp/ProdList.do">Shop Grid</a></li>                    
                           <%-- <li><a href="<%=request.getContextPath()%>/jsp/CartList.do">Shoping Cart</a></li> --%>
                           <%
                  		if (session.getAttribute("Member") != null) {
          			%>
                  		<li><a href="<%=request.getContextPath()%>/jsp/CheckOut.do">Check Out</a></li>
          			<%		
          				}
                  	%>
                        </ul>
                        
                     </li>
                     
                     <li><a>NEWS</a>
                     	<ul class="header__menu__dropdown">
                    	   <li><a href="<%=request.getContextPath()%>/jsp/Board2.do">Notice</a></li>
                    	   <li><a href="<%=request.getContextPath()%>/jsp/Board3.do">Event</a></li>
                     	</ul>
                     </li>
                     
                     <li><a href="<%=request.getContextPath()%>/jsp/CS.do">CS</a></li>
                     
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
   
   