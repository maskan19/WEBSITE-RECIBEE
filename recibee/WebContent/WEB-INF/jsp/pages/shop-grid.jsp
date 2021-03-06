<%@page import="java.util.Map"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="vo.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.ProdVO"%>
<%@page import="vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">

<script type="text/javascript" src="../js/shop-grid.js"></script>

<style type="text/css">
.price-range-wrap .range-slider .price-input:after {
	left: 57px;
}

.product {
	padding-top: 20px;
}

.hero_bottom {
	padding-top: 20px;
}

.latest-product__item__pic img {
    height: 210px;
}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Humberger Header Section Begin -->
	<jsp:include page="../common/humberger_header.jsp"></jsp:include>
	<!-- Humberger Header SectionEnd -->

	
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>RECIbee Shop</h2>
						<div class="breadcrumb__option">
							<a href="<%=request.getContextPath()%>/jsp/Index.do">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	
	<!-- Hero Section Begin -->
	<section class="hero hero_bottom">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__search">
						<div class="div__top__layer">
							<div class="hero__search__form">
								<form action="<%=request.getContextPath()%>/jsp/ProdSearch.do">
									<input type="text" name="search"
										placeholder="What do yo u need?">
									<button type="submit" class="site-btn">SEARCH</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->
	
	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item" style="display: flex;">
							<h4>??????</h4>
							<div class="filter__sort">
								<select id="lprod">
									<%
									int lp = 0;
									if(request.getAttribute("lp")!=null){
										lp = (Integer)request.getAttribute("lp");
									}
									List<LprodVO> list = (List<LprodVO>) request.getAttribute("list");
									
									if(lp!=0){
										%>
											<option value="<%=list.get(lp-1).getLprod_code()%>"><%=list.get(lp-1).getLprod_name()%></option>
										<%	
										}	
									for (int i = 0; i < list.size(); i++) {
										if(i!=lp-1){
									%>
									<option value="<%=list.get(i).getLprod_code()%>"><%=list.get(i).getLprod_name()%></option>
									<%
										}
									}
									%>
								</select>
							</div>
						</div>
						<!-- <div class="sidebar__item">
							<h4>?????? ??????</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="1000" data-max="10000">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div> -->

						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>?????? ??? ??????</h4>
								<div class="latest-product__slider owl-carousel">
									<%
									List<HashMap<String, Object>> prodList = (List<HashMap<String, Object>>) request.getAttribute("prodList");
									List<HashMap<String, Object>> allList = (List<HashMap<String, Object>>) request.getAttribute("allList");
									Cookie[] cookies = request.getCookies();
									int aa = 0;
							       	if(cookies!=null){
								       	for(int i = 0; i < allList.size(); i++){
								       		for(int j = 0; j < cookies.length-1; j++){
								       		
								       		if(!cookies[j].getName().substring(0,4).equals("prod")) continue;
								       			String last = ((BigDecimal)allList.get(i).get("PROD_CODE")).toString();
								       			if(cookies[j].getValue().equals(last)){
														if (aa % 3 == 0) {
															
												%>
												<div class="latest-prdouct__slider__item">
													<%
													}
													%>
													<a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=allList.get(i).get("PROD_CODE")%>&lprod=<%=allList.get(i).get("LPROD_CODE")%>" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="pic/<%=allList.get(i).get("PROD_FILE")%>" alt="">
															<h6><%=allList.get(i).get("PROD_NAME")%></h6>
															<span style="color: black"><%=allList.get(i).get("PROD_PRICE")%>???</span>
														</div>
														<div class="latest-product__item__text"></div>
													</a>
													<%
													if (aa % 3 == 2 || cookies.length-2==aa) {
													%>
												</div>
												<%
													}
													aa++;
								       			}
								       		}
								       	}
							       	}else{
							       	%>
							       		<div>?????? ??? ????????? ????????????.</div>
							       	<%	
							       	}
							       	
									%>



								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-9 col-md-7">
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>Sort By</span> <select id="listOrderBy">
									<%
										String sort = "";
										if(request.getAttribute("sort")!=null){
											sort = (String)request.getAttribute("sort");
											
										}
										if(sort.equals("?????????") || sort.equals("")){
									%>
										<option value="?????????">?????? ?????????</option>
										<option value="?????????">?????? ?????????</option>
									<%			
										}else{
									%>
										<option value="?????????">?????? ?????????</option>
										<option value="?????????">?????? ?????????</option>
									<%		
										}
									%>
										
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span><%=prodList.size()%></span>????????? ??????
									</h6>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="filter__option">
									 <% 
							int num=5;
								//session = request.getSession();
								MemberVO member = (MemberVO)session.getAttribute("Member");
								if(member!=null) num = member.getMem_grade();
							
						%>
                        
                        <% if(num==999){
                        %>
                        
                        <input type="button" id="insert" class="site-btn" value="??????">
                        <%
                        }
                        	
                        %>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<%
						/* List<HashMap> prodList = (List<HashMap>) request.getAttribute("prodList"); */
							for (int i = 0; i < prodList.size(); i++) {
						%>


						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg">
									<a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prodList.get(i).get("PROD_CODE")%>&lprod=<%=prodList.get(i).get("LPROD_CODE")%>"><div class="product__item__pic set-bg" data-setbg="pic/<%=prodList.get(i).get("PROD_FILE")%>"></div></a>
									<ul class="product__item__pic__hover">
										<li><a href="#" class="ppp"><i idx="<%=prodList.get(i).get("PROD_CODE") %>" class="fa fa-shopping-cart gg"></i></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6>
										<a
											href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=prodList.get(i).get("PROD_CODE")%>&lprod=<%=prodList.get(i).get("LPROD_CODE")%>"><%=prodList.get(i).get("PROD_NAME")%></a>
									</h6>
									<h5><%=prodList.get(i).get("PROD_PRICE")%>
										???
									</h5>
								</div>
							</div>
						</div>


						<%
						}
						%>

					</div>
					<div class="product__pagination">
						<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
							class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->


	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink2.jsp"></jsp:include>
	<%-- <jsp:include page="../common/jslink.jsp"></jsp:include> --%>
<script type="text/javascript">
$(function() {
	$("#listOrderBy").on("change",function(){
		sort = $(this).val();
		if(sort=="?????????"){
			location.href="<%=request.getContextPath()%>/jsp/ProdList.do?sort="+sort;
		}else{
			location.href="<%=request.getContextPath()%>/jsp/ProdList.do?sort="+sort;
		}
	})

	$("#insert").on("click", function() {
		location.href="<%=request.getContextPath()%>/jsp/ProdInsertForm.do";		
	})
	
	
	$("#lprod").on("change", function() {
		lprod = $(this).val();
		location.href="<%=request.getContextPath()%>/jsp/ProdList.do?lprod="+lprod;
	})
	
	$(".ppp").on("click", function() {
		if(<%=num%>==5){
			alert("???????????? ???????????????.");
			return false;
		}
		
		var idx = $(this).find(".fa-shopping-cart").attr("idx");
		$.ajax({
			url : "<%=request.getContextPath()%>/jsp/CartOnePlus.do",
			data : {"prodCode":idx},
			type : "post",
			success: function() {
				alert("????????? ?????????????????????.");
			},
			error: function(xhr) {
				alert("?????? : " + xhr.status)
			}
		})
	})
});

</script>

</body>

</html>