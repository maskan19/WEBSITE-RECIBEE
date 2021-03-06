<%@page import="vo.MethodsVO"%>
<%@page import="vo.LprodVO"%>
<%@page import="java.util.List"%>
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
	$(".addIngre").on("click", function(){
		$(".IngredientList").empty();
		var num = $("#ingrenum").val();
		code = "<br>";
		if(num<1){
			alert("재료는 최소 한개 이상 입력해주세요.");
			return false;
		}
		for(i=1; i<=num; i++){
			code += "<input class='Ingredient' type='text' name='ingredient_name"+i+"'>";
			if(i%3==0) code+="<br>"
		}
		$(".IngredientList").append(code);
	})
	
	number = 1;
	$("#manual_input").on("click", ".btn-insert" ,function(){
		number++;
		code = '<div class="form-group manual_'+number+'">';
		code += '	메뉴얼';
		code += '	<input type="button" class="btn-delete" value="메뉴얼삭제"/><br>';
		code += '<input type="text" name="rcp_manual'+number+'" class="rcp_manual"/>';
		code += '<input type="file" name="rcp_att" class="rcp_att"/>';
		code +- '</div><br>';
		$(".form-group:last").after(code);
	})
	
	$(document).on("click", ".btn-delete",function(){
		$(this).parents(".form-group").remove();
	})
	
	$("input[value=test]").on("click", function(e){
		var dish_name = $(".form-group input[name=dish_name]").val();
		if(dish_name == ""){
			alert("레시피명이 누락되었습니다.");
			return false;
		}
		
		var dish_photo = $(".form-group input[name=dish_photo]").val();
		if(dish_photo==""){
			alert("레시피사진을 첨부해주세요.");
			return false;
		}
		
		var num = $("#ingrenum").val();
		for(var i=1; i<=num; i++){
			var ingre = $(".Ingredient[name=ingredient_name"+i+"]").val();
			if(ingre==""){
				alert("재료"+i+"를 입력해주세요.")
				return false;
			}
		}
		if(num<1) return false;
		
		for(var z=1; z<=number; z++){
			var manual = $(".manual_"+z+" input[type=text]").val();
			if(manual==""){
				alert("메뉴얼이 비워있는 곳이 있습니다. 메뉴얼을 입력해주세요.");
				return false;
			}
		}
	})
	
	$(".Loginhome").on("click", function(){
		location.href="<%=request.getContextPath()%>/jsp/Login.do";
	})
	
	$(".Recipehome").on("click", function(){
		location.href="<%=request.getContextPath()%>/jsp/RecipeMain.do";
	})
	
});
</script>
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
	.registerForm{
		margin : auto;
		width : 70%;
	}
	.goLogin{
		margin : auto;
		margin-top: 20%;
		margin-bottom: 20%;
	}
	.Ingredient{
		width : 200px;
		margin : 1px 1px;
	}
	.goLogin input[type=button]{
		margin : 0px 10px;
		width : 100px;
		height: 40px;
	}
	.rcp_manual{
		width : 100%;
	}
</style>
</head>

<body>
<%
	int count = (Integer) request.getAttribute("count");
	List<MethodsVO> methodlist = (List<MethodsVO>) request.getAttribute("methodlist");
%>
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
							</div>
							</form>
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
                        <h2>레시피 등록 페이지</h2>
                        <div class="breadcrumb__option">
                           	<span class="glyphicon glyphicon-home"></span>
                            <a href="<%=request.getContextPath()%>/jsp/RecipeMain.do">
                            <img alt="" src="pic/icon_house.png" width="20px" height="20px">RecipeHome
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
	
	<!-- 레시피 등록 페이지 Start -->
	<div class="container">
            <div class="row">
	<%
		if(count==0){
	%>	
		<div class="goLogin">
			<h3>레시피 등록은 회원만 가능합니다.</h3>
			<h3>로그인을 해주세요.</h3><br>
			<input type="button" class="Loginhome" value="로그인 하기"/>
			<input type="button" class="Recipehome" value="레시피 메인"/>
		</div>
	<% 
		}else{
	%>
		<form class="registerForm" action="<%=request.getContextPath()%>/InsertRecipe.do" method="post" enctype="multipart/form-data">
			<div class="form-group">
	      		<label>레시피명</label>
	      		<input type="text" class="form-control" id="dish_name" name="dish_name" placeholder="Enter RecipeName">
	    	</div>
			
			<div class="form-group">
	      		<label>조리방법<span>*</span></label>
	      		<br>
	      		<select id="mth_name" name="mth_name">
				<% for(int i=0; i<6; i++){
					MethodsVO vo = methodlist.get(i);
				%>
					<option class="form-control" value=<%=vo.getMth_code()%>><%=vo.getMth_name() %></option>
				<%	
					}
				%>
				</select>
				<br><br>
	    	</div>
			
			<div class="">
	      		<label>레시피사진<span>*</span></label>
	      		<input type="file" class="form-control" id="dish_photo" name="dish_photo">
	    	</div>
	    	<br>
	    	<hr>
	    	<br>
	    	<div class="form-group">
	      		<label>재료<span>*</span></label><br>
				재료개수<input id="ingrenum" name="ingrenum" type="text" value="1" width="50px"/>
				<input class="addIngre" type="button" value="확인"/>
				<div class="IngredientList">
				</div>
	    	</div>
	    	<br>
	    	<hr>
	    	<br>
			<h6>메뉴얼</h6>
			<div class="form-group manual_1" id="manual_input">
				<p>
					메뉴얼<span>*</span>
					<button type="button" class="btn-insert">메뉴얼 추가</button>
				</p>
				<input type="text" name="rcp_manual1" class="rcp_manual"/>
				<input type="file" name="rcp_att" class="rcp_att"/>
			</div><br>
			<input type="submit" value="레시피 등록">
			<input type="reset" value="레시피 초기화">
		</form>
	<% 
		}
	%>
		</div>
	</div>
	<!-- 레시피 등록 페이지 End -->
	
	
	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>