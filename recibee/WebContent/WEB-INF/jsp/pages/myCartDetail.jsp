<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
    .shoping__cart__item img{
		width: 100px;
		height: 100px;
	}       
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
                                <li><a href="./myOrder.jsp">주문 내역</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                
                
                <%  List<HashMap<String, Object>> list = null;
	                int totalpage = (Integer)request.getAttribute("totalPage");
	            	int startpage = (Integer)request.getAttribute("startPage");
	            	int endpage = (Integer)request.getAttribute("endPage");
	            	int currentpage = (Integer)request.getAttribute("cpage");
	            	int totalCount = (Integer) request.getAttribute("totalCount");
	            	System.out.print(request.getAttribute("list"));
	            	
                	if(request.getAttribute("list")!=null){
	                	list = (List<HashMap<String, Object>>)request.getAttribute("list");
                	}%>
                	
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                     <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">상품내역</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>금액</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <%	
                            		int total=0;
                            		if(list.size() > 0){
                            		for(int i = 0; i < list.size(); i++){
                            		int sum = ((BigDecimal)list.get(i).get("PROD_PRICE")).intValue()*((BigDecimal)list.get(i).get("CART_COUNT")).intValue();
                            		total += sum;	
                            %>
                            	<tr idx="<%=list.get(i).get("PROD_CODE")%>">
                                    <td class="shoping__cart__item">
                                        <img src="pic/<%=list.get(i).get("PROD_FILE") %>" alt="">
                                        <h5><%=list.get(i).get("PROD_NAME") %></h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                    	<div class="price" style="display: inline"><%=list.get(i).get("PROD_PRICE") %></div> 원
                                    <td class="shoping__cart__quantity">
                                        <%=list.get(i).get("CART_COUNT")%>
                                    </td>
                                      <td class="shoping__cart__total">
                                        <%=sum%> 원 
                                    </td>
                                  
                                </tr>
                            
                            <%
                            		}
                            	} 
                            %>
                            
                            </tbody>
                        </table>
                    </div>
                    </div>
                    
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