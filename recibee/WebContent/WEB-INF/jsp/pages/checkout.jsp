<%@page import="vo.AddrVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<%
	session = request.getSession();
	MemberVO member = null;
	if((MemberVO)session.getAttribute("Member") != null){
		member =(MemberVO)session.getAttribute("Member");
	};
	
	List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("list");
	
%>

<!-- Meta Font Css Styles -->

<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../js/shop-grid.js"></script>

<style type="text/css">
	.modal_btn{
		width: 70px;
   	 	height: 30px;
	    padding-top: 0px;
	    padding-bottom: 0px;
	    padding-right: 0px;
	    padding-left: 0px;
	}
	.checkout__form hr .aaa{
		margin-top: 26px;
		margin-bottom: 13px;
	}
	.shoping__discount{
		margin-top: 0px;
		margin-bottom: 45px;
	}
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
                            <a href="<%=request.getContextPath()%>/jsp/Index.do">Home</a>
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
                <h4>결제 주문서</h4>
                <form id="check" action="<%=request.getContextPath()%>/jsp/CheckOutSucces.do" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-7">
                            <div class="row">
                                <!-- <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>수령인<span>*</span></p>
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
                            <h5>구매자 정보</h5>
                            <hr>
                            <div class="checkout__input">
                                <p>수령인<span>*</span></p>
                                <input type="text" name="memname" value="<%=member.getMem_name() %>">
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>연락처<span>*</span></p>
                                        <input type="text" name="memtel" value="<%=member.getMem_tel() %>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이메일<span>*</span></p>
                                        <input type="text" name="mememail" value="<%=member.getMem_id() %> ">
                                    </div>
                                </div>
                            </div>
                            <h5>배송지 정보</h5>
                            <hr>
                            <div class="checkout__input">
                           
                                <p>수령주소<span>*</span>
                                <button type="button" id="addselect" class="site-btn">주소선택</button>
                                <button type="button" id="addChanselect" class="site-btn">주소변경</button>
                                </p>
                                <% 
                                	List<AddrVO> addr = (List<AddrVO>) request.getAttribute("addr");
                                	if(addr.size()>0){
                                %>
                                <div class="col-lg-6 addr">
                                    <div class="checkout__input">
                                        <input id="zonecode" name="zonecode" class="addr_post" type="text" value="<%=addr.get(0).getAddr_zip()%>">
                                    </div>
                                </div>
                                
                                <input type="text" name="roadAddress" id="roadAddress" class="checkout__input__add" value="<%=addr.get(0).getAddr_doro()%>">
                                <input type="text" name="accAddress" id="accAddress" value="<%=addr.get(0).getAddr_acc()%>">
                                <%		
                                	}else{
                                %>
                                <div class="col-lg-6 addr">
                                    <div class="checkout__input">
                                        <input id="zonecode" class="addr_post" type="text" placeholder="우편주소">
                                    </div>
                                </div>
                                
                                <input type="text" id="roadAddress" placeholder="도로명주소" class="checkout__input__add">
                                <input type="text" id="accAddress" placeholder="상세주소">
                                
                                <%		
                                	}
                                %>
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
									절달 사항<span>*</span>
								</p>
								<textarea placeholder="전달 사항을 작성해 주세요" name="memo"></textarea>
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
                        	<div class="shoping__continue">
                        	<hr class="aaa" style="margin-top: 26px">
                        <div class="shoping__discount">
                            <h5>마일리지 할인</h5>
                            <form action="#">
                                <input id="mile" name="mile" type="text" value="0">
                                	<p>사용가능 마일리지 : <%=member.getMem_mile() %></p>
                                <button type="button" id="milebtn" style="margin-top:20px;" class="site-btn">마일리지 전체적용</button>
                            </form>
                        </div>
                    </div>
                            <div class="checkout__order">
                                <h4>결제 금액</h4>
                                <div class="checkout__order__products">상품 <span></span></div>
                                <ul>
                                <%
                                	int total=0;
                                	if(list.size()>0){
	                                	for(int i = 0; i < list.size(); i++){
	                                		int sum = ((BigDecimal)list.get(i).get("PROD_PRICE")).intValue()*((BigDecimal)list.get(i).get("CART_COUNT")).intValue();
	                            			total += sum;
	                            			String name = (String)list.get(i).get("PROD_NAME");
	                            			if(name.length()>13) name = name.substring(0, 13);
                                %>
                                			<li><%=name %><span><%=sum %> 원</span></li>
                                <%		
    	                            	}
                                	}
                                %>
                                   
                                </ul>
                                <div class="checkout__order__subtotal">사용마일리지 <span><div class="subtotal" style="display: inline">0</div> 원</span></div>
                                <div class="checkout__order__total">총 결제 금액 <span><div class="total" style="display: inline"><%=total %></div><input type="hidden" class="totalv" name="total" value="<%=total%>"> 원</span></div>
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
                                         	위 주문 내용을 확인 하였으며, 회원 본인은 결제에 동의합니다.
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <button id="pay" type="button" class="site-btn" disabled="disabled">결제</button>
                            </div>
                            
                    
                        </div>
                 
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
    
    
    
	<!-- Modal -->
	<div id="modiModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="margin: 15.75rem auto;">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">주소록 </h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div id="accordion">
						<ul class="list-group">
						<%
							List<AddrVO> addrList = (List<AddrVO>)request.getAttribute("addrList");
							for(AddrVO vo : addrList){
						%>
							  <li idx="<%=vo.getAddr_code() %>" id="addr_<%=vo.getAddr_code() %>" class="list-group-item">
							  	<i class="zip"><%=vo.getAddr_zip() %></i>
							  	<i class="doro"><%=vo.getAddr_doro() %></i>
							  	<div>
							  		<button type="button" class="site-btn modal_btn modal_btn_select">선택</button>
							  		<button type="button" class="site-btn modal_btn modal_btn_delete">삭제</button>
							  	</div>
							  </li>
						<%		
							}
						%>
						</ul>
					
					</div>
						<div class="modal-footer">
				 	<!-- <button class="btn btn-primary" id="wsend" type="submit">전송</button> -->
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
	<!-- modal end -->
	
	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink2.jsp"></jsp:include>

</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	if(<%=list.size()%>==0){
		alert("구매하실 상품이 없습니다. 상품페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/jsp/ProdList.do";
	}
	
	$(".modal_btn_select").on("click", function() {
		
		var zip = $(this).parents(".list-group-item").find(".zip").text();
		var doro = $(this).parents(".list-group-item").find(".doro").text();

		$("#roadAddress").val(doro);
        $("#zonecode").val(zip)
        $("#accAddress").val("");
        $("#modiModal").modal("hide");
	})
	$(".modal_btn_delete").on("click", function() {
		var doro = $(this).parents(".list-group-item").find(".doro").text();
		var idx = $(this).parents(".list-group-item").attr("idx");
		
		$.ajax({
			url : "<%=request.getContextPath()%>/jsp/AddrDelete.do",
			data : {"doro":doro},
			type : "post",
			success: function() {
				alert("삭제되었습니다.");
				$("#addr_"+idx).remove();
			}
		})
	})
	
	$("#addChanselect").on("click", function() {
		$('#modiModal').modal('show');
	})
	
	$('#paypal').on('change', function () {
		var paypal = $(this).prop('checked')
	    if(paypal){
	    	$("#pay").attr("disabled", false);
	    }else{
	    	$("#pay").attr("disabled", true);
	    }
		})
	$("#pay").on("click", function() {
		var totals = $(".totalv").val();
		
		if(totals < 100){
			mile();
		}else{
			
			money();
			
		} 
		
	})
	mile = function() {
		
		code = '<input type="hidden" class="totalv" name="pg" value="mile">';
		code += '<input type="hidden" class="totalv" name="pgMathod" value="mile">';
		$(".checkout__order__products").html(code);
		
		$.ajax({
			url : "<%=request.getContextPath()%>/jsp/CheckOutSucces.do",
			method: "post",
			data : $("#check").serialize(),
			success: function() {
				location.href="<%=request.getContextPath()%>/jsp/CheckOutSuccesView.do";
			}
			
		})
	}
	
	money = function() {
		var IMP = window.IMP; // 생략가능
		IMP.init('iamport'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:결제테스트',
		    amount : $(".total").text(),
		    //buyer_email : <%=member.getMem_id()%>,
		   	//buyer_name : <%=member.getMem_name()%>,
		    //buyer_tel : <%=member.getMem_tel()%>,
		    //buyer_addr : '서울특별시 강남구 삼성동',
		    //buyer_postcode : '123-456',
		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        code = '<input type="hidden" class="totalv" name="pg" value="mile">';
				code += '<input type="hidden" class="totalv" name="pgMathod" value="mile">';
				$(".checkout__order__products").html(code);
				
				$.ajax({
					url : "<%=request.getContextPath()%>/jsp/CheckOutSucces.do",
					method: "post",
					data : $("#check").serialize(),
					success: function() {
						location.href="<%=request.getContextPath()%>/jsp/CheckOutSuccesView.do";
					}
					
				})
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    //alert(msg);
		});
	}
	
	var subtotal = $(".checkout__order__products ui li span").text();
	$(".checkout__order__subtotal span").append(subtotal);

	$("#addselect").on("click",function(){
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
	            /* road = data.roadAddress;
	            jibun = data.jibunAddress; */
	            $("#roadAddress").val(data.roadAddress);
	            $("#zonecode").val(data.zonecode)
	        }
	    }).open();
	})
	
	
	$("#milebtn").on("click" , function() {
		var mile = <%=member.getMem_mile()%>
		var total = <%=total%>;
		if(mile>total){
			$("#mile").val(total);
		}else{
			$("#mile").val(mile);
		}
		$("#mile").trigger("change");
	})
	
	$("#mile").on("change", function() {
		var mile = $(this).val();
		var total = <%=total%>;
		total -= mile;
		$(".total").text(total);
		$(".totalv").val(total);
		$(".subtotal").text(mile);
	})

});
</script>

  

</html>