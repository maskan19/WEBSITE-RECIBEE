<%@page import="vo.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<%	List<Map<String, Object>> list =  (List<Map<String, Object>>) request.getAttribute("prod");
       	Map<String, Object> prod = list.get(0); 
    %>

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">

</head>

<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Humberger Header Section Begin -->
	<jsp:include page="../common/humberger_header.jsp"></jsp:include>
	<!-- Humberger Header SectionEnd -->
<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__search">
						<div class="div__top__layer">
							<div class="hero__search__form">
								<form action="#">
									<div class="hero__search__categories">
										All Categories <span class="arrow_carrot-down"></span>
										<ul class="header__menu__dropdown">
											<li>Recipe</li>
											<li>Board1</li>
											<li>Shop</li>
										</ul>
									</div>
									<input type="text" placeholder="What do yo u need?">
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
	    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Vegetable’s Package</h2>
                        <div class="breadcrumb__option">
                            <a href="<%=request.getContextPath()%>/jsp/Index.do">Home</a>
	                            <span>Detail</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="pic/<%=prod.get("PROD_FILE") %>" alt="">
                        </div>
                        <!-- <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div> -->
                    </div>
                </div>
               
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><%=prod.get("PROD_NAME") %></h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price"><%=prod.get("PROD_PRICE") %> 원</div>
                        <p><%=prod.get("PROD_CONT") %></p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <input type="button" id="cart" class="site-btn" value="장바구니 담기">
                       <!--  <a href="#" class="primary-btn">장바구니 담기</a> -->
                        <div class="sum"><div class="product__details__price">총합 : <%=prod.get("PROD_PRICE") %> 원</div></div>
                        <!-- <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a> -->
                        <ul>
                            <li><b>구분</b> <span><%=prod.get("LPROD_NAME") %></span></li>
                            <!-- <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li> -->
                            <li><b>무게</b> <span>500g</span></li>
                            <li><b>공유</b>
                                <div class="share">
                                    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                                    <!-- <a href="#"><i class="fa fa-twitter"></i></a> -->
                                    <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                                    <!-- <a href="#"><i class="fa fa-pinterest"></i></a> -->
                                </div>
                            </li>
                        </ul>
                        
                        <% 
							int num=5;
								//session = request.getSession();
								MemberVO member = (MemberVO)session.getAttribute("Member");
								if(member!=null) num = member.getMem_grade();
							
						%>
                        
                        <% if(num==999){
                        %>
                        
                        <input type="button" id="update" class="site-btn" value="수정">
                        <input type="button" id="delete" class="site-btn" value="삭제">
                        <%
                        }
                        	
                        %>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">상품상세</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">상품평</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">상품리뷰<span>(0)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc button__center">
                                    <%	
                                		for(int i = 0; i < list.size(); i++){
                                			if(i>0){
                                			%>
                                				<img style="margin-bottom:10px" class="product__details__pic__item--large" src="pic/<%=list.get(i).get("PROD_FILE") %>" alt="">
                                			<%
                                			}
                                		}
                                	%>
                                    
                                   <%--  <p><%=prod.get("PROD_CONT") %></p> --%>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>상품평</h6>
                                    <p>상품평은 없어요</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>상품리뷰</h6>
                                    <p>리뷰도 없답니다</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>관련 상품</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="categories__slider owl-carousel">
            <%	List<HashMap> accList = (List<HashMap>) request.getAttribute("accList");
            	for(int i=0; i<accList.size(); i++){
           	%>
           		<div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                    	<div class="product__item__pic set-bg">
                    	<a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=accList.get(i).get("PROD_CODE") %>&lprod=<%=accList.get(i).get("LPROD_CODE")%>"><div class="product__item__pic set-bg" data-setbg="pic/<%=accList.get(i).get("PROD_FILE") %>"></div></a>
                        
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="<%=request.getContextPath()%>/jsp/ProdDetail.do?code=<%=accList.get(i).get("PROD_CODE") %>&lprod=<%=accList.get(i).get("LPROD_CODE")%>"><%=accList.get(i).get("PROD_NAME") %></a></h6>
                            <h5><%=accList.get(i).get("PROD_PRICE") %> 원</h5>
                        </div>
                    </div>
                </div>
           	<%
            	}
            %>
                
               </div>
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink2.jsp"></jsp:include>
<script type="text/javascript">
$(function() {
	$("#delete").on("click", function() {
		location.href="<%=request.getContextPath()%>/jsp/ProdDetailDelete.do?prodCode="+<%=prod.get("PROD_CODE")%>;
	})
	sum = <%=prod.get("PROD_PRICE")%>;
	$(".inc ").on("click", function() {
		sum += <%=prod.get("PROD_PRICE")%>;
		code = '<div class="product__details__price">총합 : '+sum+ ' 원</div>';
		$(".sum").html(code);
	})
	$(".dec ").on("click", function() {
		aa = $(this).parents(".pro-qty").find("input[type=text]").val();
		if(aa > 1){
			sum -= <%=prod.get("PROD_PRICE")%>;
		code = '<div class="product__details__price">총합 : '+sum+ ' 원</div>';
		$(".sum").html(code);
		}
	})
	$("#cart").on("click", function() {
		if(<%=num%>==5){
			alert("로그인이 필요합니다.");
			return false;
		}
		var qty = $(".pro-qty").find("input[type=text]").val();
		console.log(qty);
		location.href="<%=request.getContextPath()%>/jsp/ProdCartInsert.do?prodCode=<%=prod.get("PROD_CODE")%>&cartCount="+qty;
	})
	$("#update").on("click", function() {
		location.href="<%=request.getContextPath()%>/jsp/ProdUpdateForm.do?prodCode="+<%=prod.get("PROD_CODE")%>;
	})
})
</script>
<script src="../js/jquery.nice-select.min.js"></script>
<script src="../js/mixitup.min.js"></script>

</body>

</html>