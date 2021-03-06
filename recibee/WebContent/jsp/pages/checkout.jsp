<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/shop-grid.js"></script>
<script type="text/javascript">
$(function() {
	var subtotal = $(".checkout__order__products ui li span").text();
	$(".checkout__order__subtotal span").append(subtotal);
	
});
</script>
<style type="text/css">
	.addr{
		padding-left: 0px;
	}
	
	.contact-form .col-lg-12{
		padding: 0px; 
	}
	.checkout__form .col-md-6{
		padding-left: 0px;
	}
	.contact-form form input{
		margin: 0px;
	}
	.checkout__form hr{
		margin-top: 5px;
	}
	.checkout__input p button{
		margin-left: 10px;
    	height: 30px;
   		width: auto;
    	padding-top: 2px;
		font-size: small;
	}
	.checkout__input__checkbox label{
		font-size: small;
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
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="contact-form spad">
        <div class="container">
            <div class="row">
                <!-- <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
                    </h6>
                </div> -->
            </div>
            <div class="checkout__form">
                <h4>?????? ?????????</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-7">
                            <div class="row">
                                <!-- <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>?????????<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div> -->
                            </div>
                            <h5>????????? ??????</h5>
                            <hr>
                            <div class="checkout__input">
                                <p>?????????<span>*</span></p>
                                <input type="text" placeholder="?????????">
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>?????????<span>*</span></p>
                                        <input type="text" placeholder="010-1234-1234">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>?????????<span>*</span></p>
                                        <input type="text" placeholder="abc123@acb123.com">
                                    </div>
                                </div>
                            </div>
                            <h5>????????? ??????</h5>
                            <hr>
                            <div class="checkout__input">
                           
                                <p>????????????<span>*</span><button type="button" class="site-btn">???????????????</button></p>
                                
                                <div class="col-lg-6 addr">
                                    <div class="checkout__input">
                                        <input class="addr_post" type="text" placeholder="????????????">
                                    </div>
                                </div>
                                                              
                                
                                
                                
                                <input type="text" placeholder="???????????????" class="checkout__input__add">
                                <input type="text" placeholder="????????????">
                            </div>
                            <!-- <div class="checkout__input">
                                <p>Town/City<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input">
                                <p>Country/State<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input">
                                <p>Postcode / ZIP<span>*</span></p>
                                <input type="text">
                            </div> -->
                            
                            <div class="col-lg-12">
                            	<div class="checkout__input">
								<p>
									?????? ??????<span>*</span>
								</p>
								<textarea placeholder="?????? ????????? ????????? ?????????"></textarea>
							</div>
                            </div>
                            <!-- <div class="checkout__input__checkbox">
                                <label for="acc">
                                    Create an account?
                                    <input type="checkbox" id="acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <p>Create an account by entering the information below. If you are a returning customer
                                please login at the top of the page</p>
                            <div class="checkout__input">
                                <p>Account Password<span>*</span></p>
                                <input type="text">
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="diff-acc">
                                    Ship to a different address?
                                    <input type="checkbox" id="diff-acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input">
                                <p>Order notes<span>*</span></p>
                                <input type="text"
                                    placeholder="Notes about your order, e.g. special notes for delivery.">
                            </div> -->
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>?????? ??????</h4>
                                <div class="checkout__order__products">?????? <span></span></div>
                                <ul>
                                    <li>?????? ??????<span>10,000???</span></li>
                                    <li>?????? ?????? <span>9,000???</span></li>
                                    <li>????????? ?????? <span>15,000???</span></li>
                                </ul>
                                <div class="checkout__order__subtotal">Subtotal <span>34,000???</span></div>
                                <div class="checkout__order__total">Total <span>34,000???</span></div>
                                <!-- <div class="checkout__input__checkbox">
                                    <label for="acc-or">
                                        Create an account?
                                        <input type="checkbox" id="acc-or">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do eiusmod tempor incididunt
                                    ut labore et dolore magna aliqua.</p>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Check Payment
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div> -->
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                         	??? ?????? ????????? ?????? ????????????, ?????? ????????? ????????? ???????????????.
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <button type="submit" class="site-btn">??????</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>