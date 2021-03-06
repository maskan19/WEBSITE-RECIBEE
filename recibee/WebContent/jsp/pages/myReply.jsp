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
		    padding: 24px 0 0 0;
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
    		height: 70px;
        }
       .product__pagination, .blog__pagination {
		    padding-top: 70px;
		    flex: inherit;
		    text-align: center;
		    
		}
		a:hover{color : black;}
		a:link{color: black;}
		a:visited{color: black;}
    </style>
    <script>
    	$(fuction(){
    		
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
                                <li><a href="./myPage.jsp">?????? ??????</a></li>
                                <li><a href="./likedRecipe.jsp">?????? ?????????</a></li>
                                <li><a href="./myRecipe.jsp">?????? ?????????</a></li>
                                <li><a href="./myReply.jsp">?????? ??????</a></li>
                                <li><a href="./myOrder.jsp">?????? ??????</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num">?????? ??????1</p>
                                    <p class="reply__title"><a href="#">?????? ???????????? ?????? ???????????????. ????????? ???????????? ...</a></p>
                                    <a href="#" class="blog__btn">?????? ?????? <span class="arrow_right"></span></a>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num">?????? ??????2</p>
                                    <p class="reply__title"><a href="#">?????? ???????????? ?????? ???????????????. ????????? ???????????? ...</a></p>
                                    <a href="#" class="blog__btn">?????? ?????? <span class="arrow_right"></span></a>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num">?????? ??????3</p>
                                    <p class="reply__title"><a href="#">?????? ???????????? ?????? ???????????????. ????????? ???????????? ...</a></p>
                                    <a href="#" class="blog__btn">?????? ?????? <span class="arrow_right"></span></a>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="reply__num">?????? ??????4</p>
                                    <p class="reply__title"><a href="#">?????? ???????????? ?????? ???????????????. ????????? ???????????? ...</a></p>
                                    <a href="#" class="blog__btn">?????? ?????? <span class="arrow_right"></span></a>
                                </div>
                            </div>
                    </div>
<!--                      <hr> -->
                    <div class="product__pagination">
                    	<a href="#"><i class ="fa fa-long-arrow-left"></i></a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
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