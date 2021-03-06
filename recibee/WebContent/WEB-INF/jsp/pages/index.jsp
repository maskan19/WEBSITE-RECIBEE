<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PostAttVO"%>
<%@page import="vo.PostrplVO"%>
<%@page import="vo.ProdVO"%>
<%@page import="vo.PostVO"%>
<%@page import="vo.DishVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
</head>

<body oncontextmenu='return false' ondragstart='return false'
	onselectstart='return false'>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Humberger Header Section Begin -->
	<jsp:include page="../common/humberger_header.jsp"></jsp:include>
	<!-- Humberger Header SectionEnd -->

	<!-- Hero Section Begin -->
	<jsp:include page="../common/hero_event.jsp"></jsp:include>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->
	<section class="categories">
		<div class="container">
			<div class="section-title">
				<br><br>
				<h2>요즘 뜨는 레시피</h2>
				<br>
			</div>
			<div class="row">

				<div class="categories__slider owl-carousel">
				
				<%
				//서블릿에서 보내온 데이터를 출력한다.
				List<DishVO> dishList = (List<DishVO>) request.getAttribute("Dishlist");
				if (dishList == null || dishList.size() == 0) {
				%>
				<span>-</span>
				<%
					} else {
						for (DishVO dish : dishList) {
				%>
					<div class="col-lg-3">
						<div class="categories__item div__image">
						<% if(dish.getDish_code() < 1134) {%>
						<a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dish.getDish_code()%>"><div class="categories__item div__image set-bg"
							data-setbg="<%=dish.getDish_photo()%>"></div></a>
						<%}else{ %>
						<a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dish.getDish_code()%>"><div class="categories__item div__image set-bg"
							data-setbg="pic/<%=dish.getDish_photo()%>"></div></a>
						
						<%} %>	
							<h5>
								<a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dish.getDish_code()%>"><%=dish.getDish_name()%></a>
							</h5>
						</div>
					</div>
				<%
					}
					}
				%>
				
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
					<br><br>
						<h2>레시비 신상</h2>
						<br><br>
					</div>
					<!-- <div class="featured__controls">
						<ul>
							<li class="active" data-filter="*">All</li>
							<li data-filter=".oranges">Fruit</li>
							<li data-filter=".vegetables">Vegetables</li>
							<li data-filter=".fresh-meat">Fresh Meat</li>
							<li data-filter=".fastfood">Fastfood</li>
						</ul>
					</div> -->
				</div>
			</div>
			<div class="row featured__filter">
			
			<%
				List<ProdVO> prodList = (List<ProdVO>) request.getAttribute("Prodlist");
				if (prodList == null || prodList.size() == 0) {
				%>
				<span>-</span>
				<%
				} else {
					for (ProdVO prod : prodList) {
						String att = "준비중.jpg";
						if (prod.getProd_atts() != null){
							att = prod.getProd_atts().get(0).getProd_file();
						}
				%>
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg">
						<a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prod.getProd_code()%>&lprod=<%=prod.getLprod_code()%>"><div class="featured__item__pic set-bg" data-setbg="pic/<%=att %>"></div></a>
							<ul class="featured__item__pic__hover">
							<!-- 	<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li> -->
								<li><a href="#" class="ppp"><i idx="<%=prod.getProd_code() %>" class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prod.getProd_code()%>&lprod=<%=prod.getLprod_code()%>"><%=prod.getProd_name() %></a>
							</h6>
							<h5>₩ <%=prod.getProd_price()%></h5>
						</div>
					</div>
				</div>
				<%
					}
				%>
				<%
					}
				%>
				
			</div>
		</div>
	</section>
	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="img/banner/banner-1.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="img/banner/banner-2.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner End -->

	<!-- Latest Product Section Begin -->
	<!-- <section class="latest-product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Latest Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Top Rated Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="latest-product__text">
						<h4>Review Products</h4>
						<div class="latest-product__slider owl-carousel">
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
							<div class="latest-prdouct__slider__item">
								<a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-1.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-2.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a> <a href="#" class="latest-product__item">
									<div class="latest-product__item__pic">
										<img src="img/latest-product/lp-3.jpg" alt="">
									</div>
									<div class="latest-product__item__text">
										<h6>Crab Pool Security</h6>
										<span>$30.00</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Latest Product Section End -->

	<!-- Blog Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<br><br>
						<h2>최신 포스트</h2>
					</div>
				</div>
			</div>
			<div class="row">
			<%
				List<PostVO> postList = (List<PostVO>) request.getAttribute("Postlist");
				if (postList == null || postList.size() == 0) {
				%>
				<span>-</span>
				<%
					} else {
						for (PostVO post : postList) {
							int reply = 0;
							String att = "blog-3.jpg";
							if (post.getPost_rpls() != null){
								reply = post.getPost_rpls().size();
							}
							if (post.getPost_atts() != null){
								att = post.getPost_atts().get(0).getPost_file();
							}
				%>
				
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic blog__image">
							<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><img src="pic/<%=att %>" alt=""></a>
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> <%=post.getPost_date()%></li>
								<li><i class="fa fa-comment-o"></i> <%=reply %></li>
							</ul>
							<h5>
								<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><%=post.getPost_title() %></a>
							</h5>
							<p><%=post.getPost_cont() %></p>
						</div>
					</div>
				</div>
				<%
					}}
				%>
			
			
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
	
<script type="text/javascript">
$(".ppp").on("click", function() {
	<% 
		int num=5;
		//session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		if(member!=null) num = member.getMem_grade();
	%>
	if(<%=num%>==5){
		alert("로그인이 필요합니다.");
		return false;
	}
	
	var idx = $(this).find(".fa-shopping-cart").attr("idx");
	$.ajax({
		url : "<%=request.getContextPath()%>/jsp/CartOnePlus.do",
		data : {"prodCode":idx},
		type : "post",
		success: function() {
			alert("상품이 추가되었습니다.");
		},
		error: function(xhr) {
			alert("상태 : " + xhr.status)
		}
	})
})
</script>
</body>

</html>