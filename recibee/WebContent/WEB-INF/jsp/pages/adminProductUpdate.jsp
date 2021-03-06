<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.Map"%>
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
<script type="text/javascript" src="../js/shop-grid.js"></script>
<style type="text/css">
	#file__input .btn__detail{
		padding-top: 5px;
		padding-bottom: 5px;
		margin-left: 15px;
	}
	.btn__delete{
		padding-top: 5px;
		padding-bottom: 5px;
		margin-left: 15px;
	}
	.checkout__input input[type="file"] {
    width: 400px;
    height: 50px;
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
	<%
	List<Map<String, Object>> prodList = (List<Map<String, Object>>)request.getAttribute("prodList");
	%>
	<!-- 관리자 물품등록페이지 -->
	<section class="contact-form spad">
		<div class="container">
			<div class="checkout__form">
			<h4>상품 수정 페이지</h4>
				<form action="<%=request.getContextPath() %>/ProdUpdate.do" method="post" enctype="multipart/form-data">
					<%int prodcode = (Integer)request.getAttribute("prodcode"); %>
					<input type="hidden" name="prodCode" value="<%=prodcode%>">
					<div class="row">
						<div class="col-lg-12 ">
							<div class="checkout__input">
								<p>
									상품명 <span>*</span>
								</p>
								<input type="text" name="prod_name" value="<%=prodList.get(0).get("PROD_NAME")%>">
							</div>
							<div class="checkout__input">
								<p>
									상품분류 <span>*</span>
								</p>
								<select name="lprod_code">
							<%List<LprodVO> list = (List<LprodVO>)request.getAttribute("list");
							 int lcode =  ((BigDecimal)prodList.get(0).get("LPROD_CODE")).intValue();
							 %>
								<option value="<%=list.get(lcode-1).getLprod_code() %>"><%=list.get(lcode-1).getLprod_name() %></option>
							 <%	
								for(LprodVO vo : list){
							
							%>
								<option value="<%=vo.getLprod_code() %>"><%=vo.getLprod_name() %></option>
							<%
								}
							%>
							</select>
							</div>
							<br><br>
							<div class="checkout__input">
								<p>
									상품가격 <span>*</span>
								</p>
								<input type="text" name="prod_price" value="<%=prodList.get(0).get("PROD_PRICE")%>">
							</div>
							
							<div class="checkout__input">
								<p>
									상품설명<span>*</span>
								</p>
								<textarea placeholder="상품 설명을 작성해주세요" name="prod_cont"><%=prodList.get(0).get("PROD_CONT") %></textarea>
							</div>
							
							<div class="checkout__input file_0" id="file__input">
								<p>
									첨부파일<span>*</span>
									<button type="button" class="site-btn btn__detail">상세보기 추가하기</button>
								</p>
								<input type="file" name="prod_file">
							</div>
							
							
							
							
							<div class="checkout__input sfile">
								<input type="submit" class="site-btn" value="등록">
							</div>
								<input type="button" id="cancle" class="site-btn" value="취소">
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	
	
	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
<script type="text/javascript">
$(function() {
	
	number = 0;
	$("#file__input").on("click", ".btn__detail", function() {
		number++;
		code = '<div class="checkout__input file_'+number+'">';
		code += '<p>';
		code += '상세정보 <span>*</span>';
		code += '<button type="button" class="site-btn btn__delete">상세보기 삭제하기</button>';
		code += '</p>';
		code += '<input type="file" name="prod_file">';
		code += '</div>';
		
		//$("#file__input").after(code);
		$(".sfile").before(code);
		
		
		$(".btn__delete").on("click", function(){
			$(this).parents(".checkout__input").remove();
			
		})
	})
	
	$("input[type=submit]").on("click", function(e) {
		//e.preventDefault();
		var name = $(".checkout__input input[name=prod_name]").val();
		if(name == ""){
       		alert("상품명이 누락되었습니다.");
       		return false;
		}
		var price = $(".checkout__input input[name=prod_price]").val();
		if(price == ""){
       		alert("가격이 누락되었습니다.");
       		return false;
		}
		var cont = $(".checkout__input textarea[name=prod_cont]").val();
		if(cont == ""){
       		alert("상품설명이 누락되었습니다.");
       		return false;
		}
		for(var i = 0; i <= number; i++){
	       var files=$('.file_'+i+' input[type=file]').val();
	       console.log(files);
            if(files==""){
	       		alert("첨부파일이 누락되었습니다.");
	       		return false;
            }
		}
	})
	
	
	$("#cancle").on("click", function() {
		location.href="<%=request.getContextPath()%>/jsp/ProdList.do";		
	})
	
});
</script>
</body>

</html>