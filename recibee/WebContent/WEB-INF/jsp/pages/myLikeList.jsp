<%@page import="vo.DishVO"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="vo.PostVO"%>
<%@page import="java.util.List"%>
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
		    padding: 0;
		    flex-wrap: wrap;
		    flex: 0 0 79%;
		    max-width: 77%;
        }
        .blog__item__pic img {
		    height: 240px;
		}
		.pagination{
			display:inline-block;
		}
        
        .mypage__sidebar__parent{
        	flex:0 0 23%;
        }
        
        .mypage_recipe{
        	flex: 0 0 33%;
        }
       .product__pagination, .blog__pagination {
		    padding-top: 10px;
		    flex: inherit;
		    text-align: center;
		}
		.board p{
			font-size: 0.8em;
	    	margin: 0 0 3px;
	    	color:#BDBDBD;
		}
		.blog__item__text .blog__btn {
		    padding: 5px 13px 5px;
		    background: white;
		}
		.blog__item__text ul {
		    margin-bottom: 8px;
		}
		#no{    margin: 15% 0 15px 25%;}
		.no_file{padding:65px;}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script>
    $(function(){
    	
    	// 삭제 버튼 눌렀을 때
    	$('.Dbtn').on('click', function(){
    		var check = confirm("정말 삭제하시겠습니까?");
    		
    		if(check == true){
	    		var vdelete = $(this).parents(".mypage_recipe").find(".blog__item").attr("idx");
	    		location.href = "<%=request.getContextPath()%>/jsp/DeleteMyLikeList.do?dish_code="+vdelete;
    		}else{
    			alert("삭제를 취소합니다.");
    		}
    	});
    	
    	
    	// next 를 눌럿을 때 이벤트
    	$(document).on('click', '.next', function(){
    		cc = parseInt($('.pagin:last').text().trim()) + 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyLikeList.do?cpage="+cc;
    	});
    	
    	// prev 눌렀을 때 이벤트
    	$(document).on('click', '.prev', function(){
    		cc = parseInt($('.paging:first').text().trim()) - 1;
    		location.href="<%=request.getContextPath()%>/jsp/MyLikeList.do?cpage="+cc;
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
                        <h2>My Like Recibee</h2>
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
                                <li><a href="./myOrder.jsp">주문 내역</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                <%  List<DishVO> list = null;
                	int totalpage = (Integer)request.getAttribute("totalPage");
                	int startpage = (Integer)request.getAttribute("startPage");
                	int endpage = (Integer)request.getAttribute("endPage");
                	int currentpage = (Integer)request.getAttribute("cpage");
                	int totalCount = (Integer) request.getAttribute("totalCount");
                
                	if(request.getAttribute("list")!=null){
                		list = (List<DishVO>)request.getAttribute("list");
                	}
                	
                	if(list.size() < 1){
                %>
                	<p id="no">등록된 게시글이 없습니다.</p>
                <%}else{
                	for(DishVO li : list){
						
                		
                %>
                    <div  class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div idx="<%=li.getDish_code() %>" class="blog__item">
                               <%
								if(li.getDish_photo() != null && !li.getDish_photo().equals("")){
                               if(li.getDish_code() <1134){
                               %>
                                <div class="blog__item__pic">
                                    <img src="<%=li.getDish_photo()%>" alt="대체이미지">
                                </div>
                                <%}else{%>
                                	<div class="blog__item__pic">
                                   		 <img src="pic/<%=li.getDish_photo()%>" alt="대체이미지">
                               	 </div>
                               <% }}else{%>
                                 <div class="blog__item__pic">
                                    <img  class="no_file" src="pic/honey.png" alt="대체이미지">
                                </div>
                                <%} %>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> <%=li.getDish_date().substring(0,10) %></li>
                                        <li><i class="fa fa-comment-o"></i> <%= li.getDish_hit() %></li>
                                    </ul>
                                    <h5><a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=li.getDish_code()%>"><%=li.getDish_name() %></a></h5>
                                    <input type="button" class="blog__btn Dbtn" name="delete" value="삭제" />
                                </div>
                            </div>
                      </div>      
                  <%}} %>
<!--                      <hr> -->
                    <div class="product__pagination">
                    <% if(startpage>1){ %>
                        <a href="<%=request.getContextPath()%>/jsp/MyLikeList.do?cpage=<%=currentpage-3%>"><i class="fa fa-long-arrow-left prev"></i></a>
                    <%} %>
                    
                    	<div class = "pagination">
                    <%for(int i=startpage; i<=endpage; i++){
                    	if(currentpage==i){%>
	                        <a href="#" class="paging active"><%=i %></a>
                   		<%}else{%>
	                       <a  href="<%=request.getContextPath()%>/jsp/MyLikeList.do?cpage=<%=i%>"><%=i%></a>
                    <%}} %>
                        </div>
                        
                    <%if(endpage < totalpage){ %>    
                        <a href="<%=request.getContextPath()%>/jsp/MyLikeList.do?cpage=<%=currentpage+3%>"><i class="fa fa-long-arrow-right next"></i></a>
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