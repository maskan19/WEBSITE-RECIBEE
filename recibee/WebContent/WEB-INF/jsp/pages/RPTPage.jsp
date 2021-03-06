<%@page import="vo.PostVO"%>
<%@page import="vo.DishVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
    <style>          
        .mypage-set-bg{
            height: 190px;
        }
        .mypage__sidebar{
            padding: 0px;
        }
        .mypage__sidebar__parent{
        	flex:0 0 23%;
        }
        .menu{
            width: 700px;
        }
        .spad{
            padding-top: 40px;
        }
        .myPage_board{
            display: flex;
            float: left;
            padding: 40px 0 0 0;
            flex-wrap: wrap;
		    flex: 0 0 79%;
		    max-width: 77%;
        }
        .myPage_board p{
        	display:inline-block;
        	margin-right:15px;
        }
        
        .mypage__sidebar__parent{
        	flex:0 0 23%;
        }
        .mypage_recipe{
        	flex: 99%;
   			max-width: 100%;
    		height: 0px;
        }
        .blog__item__text .blog__btn {
		    padding: 0 11px;
		    height: 27px;
		}
		.product__pagination, .blog__pagination {
		    padding-top: 10px;
		    flex: inherit;
		    text-align: center;
		    
		}
		.pagination {
		    display: inline-block;
		    margin-top:40px;
		}
		.drops:hover ul {
		    top: 14px!important;
		    left: 80px;
		    padding: 2px 5px;
		    width: max-content;
		}
		p.rpt__title {
		    width: 55%;
		}
		p.r2{color:#6f6f6f; width:50%;}
		.drops ul {
/* 			width: 90px; */
			left:80px;
		}
		a:hover{color : black;}
		a:link{color: black;}
		a:visited{color: black;}
		#no{    margin: 15% 0 15px 25%;}
/* 		.drops li{height: 35px;} */
		.
    </style>
	<script>
$(function(){
    	
    	// 레시피 삭제 버튼 눌렀을 때
    	$('.DDbtn').on('click', function(){
    		var check = confirm("정말 삭제하시겠습니까?");
    		
    		if(check == true){
	    		var vdelete = $(this).parents(".mypage_recipe").find(".blog__item").attr("idx");
	    		location.href = "<%=request.getContextPath()%>/jsp/DeleteRecipe.do?dish_code="+vdelete;
    		}else{
    			alert("삭제를 취소합니다.");
    		}
    	});
    	
    	$('.DPbtn').on('click', function(){
    		var check = confirm("정말 삭제하시겠습니까?");
    		
    		if(check == true){
	    		var vdel = $(this).parents(".mypage_recipe").find(".blog__item").attr("idx");
	    		location.href = "<%=request.getContextPath()%>/jsp/DeleteMyPost.do?post_code="+vdel;
    		}else{
    			alert("삭제를 취소합니다.");
    		}
    	});
    	
    	
    	// next 를 눌럿을 때 이벤트
    	$(document).on('click', '.next', function(){
    		cc = parseInt($('.pagin:last').text().trim()) + 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyRPTPage.do?cpage="+cc;
    	});
    	
    	// prev 눌렀을 때 이벤트
    	$(document).on('click', '.prev', function(){
    		cc = parseInt($('.paging:first').text().trim()) - 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyRPTPage.do?cpage="+cc;
    	})
    	
    	
    	
    });
	</script>
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
	<jsp:include page="../common/hero.jsp"></jsp:include>
	<!-- Hero Section End -->
    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg mypage-set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>Admin Page</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2 mypage__sidebar__parent">
                    <div class="blog__sidebar mypage__sidebar">
                        <div class="blog__sidebar__item">
                            <h4>Admin Page</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPage.do">관리자 정보</a></li>
                                <li><div class="header__top__right__language drops">
	                                <a href="#">회원 관리 </a>
	                                
		                                <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetAllMember.do">모든 회원</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetRPTMember.do">신고 회원</a></li>
		                                </ul>
	                                </div>
                                </li>
                                <li><div class="header__top__right__language drops">
                                	<a href="#">신고 내역</a>
                                	 <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=0">레시피</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=2">커뮤니티</a></li>
<!-- 		                                	<li><a href="#">댓글</a></li> -->
		                                </ul>
	                                </div>
                                </li>
<!--                                 <li><a href="#">주문 현황</a></li> -->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                	<div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p >번호</p>
                                    <p class="rpt__title r2">제목</p>
                                    <p >신고 횟수</p>
                                </div>
                            </div>
                    </div>
                    <%  List<DishVO> list1 = null;
                    List<PostVO> list2 = null;
	                int totalpage = (Integer)request.getAttribute("totalPage");
	            	int startpage = (Integer)request.getAttribute("startPage");
	            	int endpage = (Integer)request.getAttribute("endPage");
	            	int currentpage = (Integer)request.getAttribute("cpage");
	            	int totalCount = (Integer) request.getAttribute("totalCount");
                	if(request.getAttribute("list1")!=null){
	                	list1 = (List<DishVO>)request.getAttribute("list1");
	                	if(list1.size() < 1){
	                %>	
                		<p id="no">신고된 게시글이 없습니다.</p>
	                <%}else{
	                	for(DishVO li : list1){
                		%>
                	
	                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
	                            <div idx="<%=li.getDish_code() %>" class="blog__item">
	                                <div class="blog__item__text">
	                                    <p class="rpt__num"><%=li.getDish_code() %></p>
	                                    <p class="rpt__title"><a href="#"><%=li.getDish_name() %></a></p>
	                                    <p class="rpt__count"><%=li.getDish_rpt() %><a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=li.getDish_code()%>" class="blog__btn" style="margin-left: 20px;">원문 보기 <span class="arrow_right"></span></a><input style="margin-left:10px;" type="button" class="blog__btn DDbtn" name="delete" value="삭제" /></p>
	                                    
	                                    
	                                </div>
	                            </div>
	                    </div>
	                 <%}}}
                	if(request.getAttribute("list2")!=null){
	                	list2 = (List<PostVO>)request.getAttribute("list2");
	                	if(list2.size() < 1){
	                %>	
	                	<p id="no">신고된 게시글이 없습니다.</p>	
	                <%		
                	}else{
                		for(PostVO li : list2){
                	%>
                	<div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div idx="<%=li.getPost_code()%>" class="blog__item">
                                <div class="blog__item__text">
                                    <p class="rpt__num"><%=li.getPost_code() %></p>
                                    <p class="rpt__title"><a href="#"><%=li.getPost_title() %></a></p>
                                    <p class="rpt__count"><%=li.getPost_rpt() %><a href="#" class="blog__btn" style="margin-left:20px;">원문 보기 <span class="arrow_right"></span></a><input style="margin-left:10px;" type="button" class="blog__btn DPbtn" name="delete" value="삭제"/></p>
                                    
                                    
                                </div>
                            </div>
                    </div>
                	
                	<%		
                	}}}
                	%>
                		
<!--                      <hr> -->
                    <div class="product__pagination">
                    <% if(startpage>1){ %>
                        <a href="<%=request.getContextPath()%>/jsp/RPTPost.do?cpage=<%=currentpage-3%>"><i class="fa fa-long-arrow-left prev"></i></a>
                    <%} %>
                    
                    	<div class = "pagination">
                    <%for(int i=startpage; i<=endpage; i++){
                    	if(currentpage==i){%>
	                        <a href="#" class="paging active"><%=i %></a>
                   		<%}else{%>
	                       <a  href="<%=request.getContextPath()%>/jsp/RPTPost.do?cpage=<%=i%>"><%=i%></a>
                    <%}} %>
                        </div>
                        
                    <%if(endpage < totalpage){ %>    
                        <a href="<%=request.getContextPath()%>/jsp/RPTPost.do?cpage=<%=currentpage+3%>"><i class="fa fa-long-arrow-right next"></i></a>
                    <%} %>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
    
    <!-- Related Blog Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink2.jsp"></jsp:include>

</body>

</html>