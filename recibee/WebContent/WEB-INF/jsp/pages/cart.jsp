<%@page import="vo.MemberVO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<%
	List<Map<String, Object>> list = (List<Map<String, Object>>) request.getAttribute("list");
	MemberVO member = (MemberVO) request.getAttribute("member");
%>

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>

<style type="text/css">
	.shoping__cart__item img{
		width: 100px;
		height: 100px;
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
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="<%=request.getContextPath()%>/jsp/Index.do">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
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
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="<%=list.get(i).get("CART_COUNT")%>">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        <%=sum%> 원 
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="<%=request.getContextPath()%>/jsp/ProdList.do" class="primary-btn cart-btn">쇼핑 계속하기</a>
                        <button id="cartupdate" style="border: aliceblue;" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>변경사항 저장</button>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>마일리지 할인</h5>
                            <form action="#">
                                <input id="mile" type="text" value="0">
                                	<p>사용가능 마일리지 : <%=member.getMem_mile() %></p>
                                <button type="button" id="milebtn" style="margin-top:20px;" class="site-btn">마일리지 전체적용</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        
                        <ul>
                            <li>총 합계<span><div class="total" style="display: inline"><%=total %></div> 원</span></li>
                            <li>예상 결제 금액<span><div class="subtotal" style="display: inline"><%=total %></div> 원</span></li>
                        </ul>
                        <a href="<%=request.getContextPath()%>/jsp/CheckOut.do" class="primary-btn">주문하기</a>
                        <p>변경사항 저장 후 주문하기 클릭</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink2.jsp"></jsp:include>
</body>
<script type="text/javascript">
$(function() {
	if(<%=list.size()%>==0){
		alert("장바구니에 상품이 없습니다. 상품페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/jsp/ProdList.do";
	}
	
	$(".inc ").on("click", function() {
		sum=0;
		price = parseInt($(this).parents("tr").find(".price").text());
		count = parseInt($(this).parents(".pro-qty").find("input[type=text]").val());
		total = parseInt($(this).parents(".container").find(".total").text());
		count++;
		sum = price * count;
		total += price;
		$(this).parents("tr").find(".shoping__cart__total").html(sum+" 원");
		$(this).parents(".container").find(".total").html(total);
	})
	$(".dec ").on("click", function() {
		sum=0;
		price = $(this).parents("tr").find(".price").text();
		count = $(this).parents(".pro-qty").find("input[type=text]").val();
		total = parseInt($(this).parents(".container").find(".total").text());
		count--;
		if(count > -1){
			sum = price * count
			$(this).parents("tr").find(".shoping__cart__total").html(sum+" 원");
			total -= price;
			$(this).parents(".container").find(".total").html(total);
		}
	})
	$("#cartupdate").on("click", function() {
		var arr = [];
		//console.log($(".shoping__cart__table").find("tbody tr"))
		$(".shoping__cart__table").find("tbody tr").each(function(i){
		   var code = $(this).attr("idx");
		   var count = $("input", this).val();
		    
		    arr.push(code + "/" + count);
		})
		
		location.href="<%=request.getContextPath()%>/jsp/CartUpdate.do?arr="+arr;
	})
	$(".icon_close").on("click", function() {
		var code = $(this).parents("tr").attr("idx");
		location.href="<%=request.getContextPath()%>/jsp/CartProdDelete.do?code="+code;
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
		if(mile>total){
			alert("합계 금액보다 많이 입력하셨습니다")
			$("#mile").val(0);
			return false;
		}
		total -= mile;
		$(".subtotal").text(total);
	})
})
</script>

</html>