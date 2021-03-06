<%@page import="vo.PostVO"%>
<%@page import="vo.DishVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<style type="text/css">
.breadcrumb__text>h2 {
	display: inline-block;
	margin: 0px 30px;
}
</style>
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
	<jsp:include page="../common/hero.jsp"></jsp:include>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<div class="container">
		<section class="breadcrumb-section set-bg"
			data-setbg="img/blog/details/header<%=(Math.round(Math.random() * 3) + 1)%>.jpg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="breadcrumb__text">
							<%
								String keyword = "";

								if (request.getAttribute("keyword") != null) {
									keyword = (String) request.getAttribute("keyword");
							%>
							<h2>
								"<%=keyword%>" 검색결과
							</h2>
							<%
								} else {
							%>
							<h2>잘못된 접근입니다.</h2>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- Breadcrumb Section End -->
	<%
		if (request.getAttribute("keyword") != null) {

			if (request.getAttribute("prodList") != null) {
				List<ProdVO> prodList = (List<ProdVO>) request.getAttribute("prodList");
	%>


	<!-- Blog Section Begin -->
	<%
		if (prodList == null || prodList.size() == 0) {
				} else {
	%>
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="row">

						<%
							int i = 0;
										for (ProdVO prod : prodList) {
											String att = "준비중.jpg";
											if (prod.getProd_atts() != null) {
												att = prod.getProd_atts().get(0).getProd_file();
											}
						%>
						<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
							<div class="featured__item">
								<div class="featured__item__pic set-bg">
									<a
										href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prod.getProd_code()%>&lprod=<%=prod.getLprod_code()%>"><div
											class="featured__item__pic set-bg" data-setbg="pic/<%=att%>"></div></a>
									<ul class="featured__item__pic__hover">
										<!-- 	<li><a href="#"><i class="fa fa-heart"></i></a></li>
									<li><a href="#"><i class="fa fa-retweet"></i></a></li> -->
										<li><a href="#" class="ppp"><i
												idx="<%=prod.getProd_code()%>" class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a
											href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prod.getProd_code()%>&lprod=<%=prod.getLprod_code()%>"><%=prod.getProd_name()%></a>
									</h6>
									<h5>
										₩
										<%=prod.getProd_price()%></h5>
								</div>
							</div>
						</div>
						<%
							i++;
											if (i > 3) {
						%>
						<hr>
						더보기
						<%
							break;
											}
										}
						%>


					</div>
				</div>
			</div>
		</div>
	</section>
	<%
		}
			}
		}
	%>


	<%
		//서블릿에서 보내온 데이터를 출력한다.
		List<DishVO> dishList = (List<DishVO>) request.getAttribute("dishList");
		if (dishList == null || dishList.size() == 0) {
	%>
	<!-- <span>-</span> -->
	<%
		} else {
	%>
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="row">
						<%
							int i = 0;
								for (DishVO dish : dishList) {
						%>

						<div class="col-lg-3">
							<div class="categories__item div__image">
								<a
									href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dish.getDish_code()%>"><div
										class="categories__item div__image set-bg"
										data-setbg="<%=dish.getDish_photo()%>"></div></a>
								<h5>
									<a
										href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dish.getDish_code()%>"><%=dish.getDish_name()%></a>
								</h5>
							</div>
						</div>
						<%
							i++;
									if (i > 3) {
						%>
						<hr>
						더보기
						<%
							break;
									}
								}
						%>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
		}
	%>
	<%
		List<PostVO> post4List = (List<PostVO>) request.getAttribute("board4");
		if (post4List == null || post4List.size() == 0) {
	%>
	<span>-</span>
	<%
		} else {
	%>
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="row">
						<%
							for (PostVO post : post4List) {
									int reply = 0;
									String att = "blog-3.jpg";
									if (post.getPost_rpls() != null) {
										reply = post.getPost_rpls().size();
									}
									if (post.getPost_atts() != null) {
										att = post.getPost_atts().get(0).getPost_file();
									}
						%>

						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic blog__image">
									<a
										href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><img
										src="pic/<%=att%>" alt=""></a>
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> <%=post.getPost_date()%></li>
										<%-- <li><i class="fa fa-comment-o"></i> <%=reply %></li> --%>
									</ul>
									<h5>
										<a
											href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><%=post.getPost_title()%></a>
									</h5>
									<p><%=post.getPost_cont()%></p>
								</div>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%
		}
	%>

	<%
		List<PostVO> post5List = (List<PostVO>) request.getAttribute("board5");
		if (post5List == null || post5List.size() == 0) {
		} else {
	%>
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="row">
						<%
							for (PostVO post : post5List) {
									int reply = 0;
									String att = "blog-3.jpg";
									if (post.getPost_rpls() != null) {
										reply = post.getPost_rpls().size();
									}
									if (post.getPost_atts() != null) {
										att = post.getPost_atts().get(0).getPost_file();
									}
						%>

						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="blog__item">
								<div class="blog__item__pic blog__image">
									<a
										href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><img
										src="pic/<%=att%>" alt=""></a>
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> <%=post.getPost_date()%></li>
										<%-- <li><i class="fa fa-comment-o"></i> <%=reply %></li> --%>
									</ul>
									<h5>
										<a
											href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><%=post.getPost_title()%></a>
									</h5>
									<p><%=post.getPost_cont()%></p>
								</div>
							</div>
						</div>
						<%
							}
						%>


					</div>
				</div>
				<hr>
			</div>
		</div>
	</section>
	<%
		}
	%>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>


</body>

</html>