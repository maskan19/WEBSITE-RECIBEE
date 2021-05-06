<%@page import="vo.DishreplyVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.PostrplVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
 
    <style>          
        .mypage-set-bg{
            height: 190px;
        }
        
        .mypage__sidebar{
            padding: 0px;
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
    		height: 40px;
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
		.blog__item__text .blog__btn {
		    padding: 0px 11px;
		    height: 27px;
		    margin-left: 10px;
		}
		p.reply__title {
		    width: 50%;
		}
		a:hover{color : black;}
		a:link{color: black;}
		a:visited{color: black;}
		#no{    margin: 15% 0 15px 25%;}
		.blog__item{margin:0;    height: inherit;}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script>
    $(function(){
    	
    	// next 를 눌럿을 때 이벤트
    	$(document).on('click', '.next', function(){
    		cc = parseInt($('.pagin:last').text().trim()) + 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyReply.do?cpage="+cc;
    	});
    	
    	// prev 눌렀을 때 이벤트
    	$(document).on('click', '.prev', function(){
    		cc = parseInt($('.paging:first').text().trim()) - 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyReply.do?cpage="+cc;
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
                        <h2>My Reply</h2>
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
                            <h4>My Page</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPage.do">회원 정보</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyLikeList.do">찜한 레시피</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyRecipe.do">나의 레시피</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPost.do">나의 게시글</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyReply.do">나의 댓글</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyCart.do">주문 내역</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                
                
                <%  List<PostrplVO> list = null;
                	List<DishreplyVO> list2 = null;
	                int totalpage = (Integer)request.getAttribute("totalPage");
	            	int startpage = (Integer)request.getAttribute("startPage");
	            	int endpage = (Integer)request.getAttribute("endPage");
	            	int currentpage = (Integer)request.getAttribute("cpage");
	            	int totalCount = (Integer) request.getAttribute("totalCount");
                	if(request.getAttribute("list")!=null){
	                	list = (List<PostrplVO>)request.getAttribute("list");
                	}
                	if(request.getAttribute("list2")!=null){
                		list2 = (List<DishreplyVO>)request.getAttribute("list2");
                	}
                	
                	%>
                	
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                     <div class="blog__item">
	                         <div class="blog__item__text">
	                             <p class="reply__num">번호</p>
	                             <p class="reply__title r2">내용</p>
	                             <p class="reply__date">작성 날짜</p><!-- &nbsp;&nbsp;&nbsp;&nbsp; -->
	                         </div>
	                      </div>
                	<%if(list.size() +list2.size() < 1){
                	%>
                		<p id="no">등록한 댓글이 없습니다.</p>
                	<%}else{ 
                		if(list2.size() > 0){
                		for(DishreplyVO rdish : list2){
                	%>	
                		<div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num"><%=rdish.getDrpl_code() %></p>
                                    <%
                                    if(rdish.getDrpl_cont().length() > 5){ 
                                    %>
                                    <p class="reply__num"><a href="#"><%=rdish.getDrpl_cont().substring(0,5)+"..." %></a></p>
                                    <%}else{  %>
                                    <p class="reply__title"><a href="#"><%=rdish.getDrpl_cont().substring(0,rdish.getDrpl_cont().length()) %></a></p>
                                    <%} %>
                                    <p class="reply__date"><%=rdish.getDrpl_date().substring(0,10) %><a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=rdish.getDish_code() %>" class="blog__btn">원문 보기 <span class="arrow_right"></span></a></p>
                                    
                                </div>
                            </div>
                		
                		
                		
                	<%}}else {
                		for(PostrplVO rpl : list){
                		
                		%>
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num"><%=rpl.getPrpl_code() %></p>
                                    <%
                                    if(rpl.getPrpl_cont().length() > 30){ 
                                    %>
                                    <p class="reply__num"><a href="#"><%=rpl.getPrpl_cont().substring(0,30)+"..." %></a></p>
                                    <%}else{  %>
                                    <p class="reply__title"><a href="#"><%=rpl.getPrpl_cont().substring(0,rpl.getPrpl_cont().length()) %></a></p>
                                    <%} %>
                                    <p class="reply__date"><%=rpl.getPrpl_date().substring(0,10) %><a href="#" class="blog__btn">원문 보기 <span class="arrow_right"></span></a></p>
                                    
                                </div>
                            </div>
                    <%}}} %>
                    </div>
<!--                      <hr> -->
                    <div class="product__pagination">
                    <% if(startpage>1){ %>
                        <a href="<%=request.getContextPath()%>/jsp/MyReply.do?cpage=<%=currentpage-3%>"><i class="fa fa-long-arrow-left prev"></i></a>
                    <%} %>
                    
                    	<div class = "pagination">
                    <%for(int i=startpage; i<=endpage; i++){
                    	if(currentpage==i){%>
	                        <a href="#" class="paging active"><%=i %></a>
                   		<%}else{%>
	                       <a  href="<%=request.getContextPath()%>/jsp/MyReply.do?cpage=<%=i%>"><%=i%></a>
                    <%}} %>
                        </div>
                        
                    <%if(endpage < totalpage){ %>    
                        <a href="<%=request.getContextPath()%>/jsp/MyReply.do?cpage=<%=currentpage+3%>"><i class="fa fa-long-arrow-right next"></i></a>
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
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>