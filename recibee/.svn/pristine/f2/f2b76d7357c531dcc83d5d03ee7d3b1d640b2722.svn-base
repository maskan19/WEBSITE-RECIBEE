<%@page import="vo.RecipeVO"%>
<%@page import="vo.IngredientVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.DishVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.recipehome{
	font-size : 150px;
}
.manualimg{
	width: 300px;
	height: 300px;
}
.manualcont{
	font-size: 1.2em;
	color: black;
	width : 70%;
}
.ingredient{
	font-size: 1.1em;
}
.manualnum{
   background : orange;
   color : white;
   border-radius: 100px 100px 100px 100px;
   width : 3%;
   height: 1%;
   text-align : center;
   font-size: 1.1em;
   font-weight: b
}
.recipe__details__pic__item{
	width : 450px;
	height: 400px;
}
.updateForm{
	margin : center;
}
</style>
<script>
 $(function(){
	$(".addIngre").on("click", function(){
		$(".IngredientList").empty();
		var num = parseInt($("#ingrenum").val());
		var idxnum = parseInt($(this).parents(".form-group").find(".ingre:last").attr("idx"));
		code = "<br>";
		for(i=idxnum+1; i<=idxnum+num; i++){
			code += "<input class='form-control ingre' type='text' idx='"+i+"'name='ingredient_name"+i+"'>";
			if(i%3==0) code+="<br>"
		}
		$(".IngredientList").append(code);
	})
	
	number = $(".manualnum:last").attr("idx");
	$(".recipe__details__tab").on("click", ".btn-insert" ,function(){
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
	
	$("input[value=수정하기]").on("click", function(e){
		var dish_name = $(".form-group input[name=dish_name]").val();
		if(dish_name == ""){
			alert("레시피명이 누락되었습니다.");
			return false;
		}
		
		var num1 = parseInt($("#ingrenum").val());
		var idxnum1 = parseInt($(".ingre:last").attr("idx"));
		for(var i=idxnum1; i<idxnum1+num1; i++){
			var ingre = $(".ingre[name=ingredient_name"+i+"]").val();
			if(ingre==""){
				alert("재료"+i+"를 입력해주세요.")
				return false;
			}
		}
		
		for(var z=1; z<=number; z++){
			var manual = $(".manual_"+z+" input[type=text]").val();
			if(manual==""){
				alert("메뉴얼이 비워있는 곳이 있습니다. 메뉴얼을 입력해주세요.");
				return false;
			}
		}
	})
 })
</script>
</head>
<body>
<%
	DishVO dishvo = (DishVO)request.getAttribute("DishVo");
	List<IngredientVO> ingrelist = (List<IngredientVO>) request.getAttribute("Ingredientlist");
	List<RecipeVO> MuaList = (List<RecipeVO>) request.getAttribute("ManualList");
	int dishId = (Integer) request.getAttribute("DishId");
	int count = (Integer) request.getAttribute("count");
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
                              All Categories
                              <span class="arrow_carrot-down"></span>
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
                        <h2> 레시피 수정 페이지</h2>
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

    <!-- Recipe Update Section Begin -->
    <section class="recipe-details spad">
        <div class="container">
            <div class="row">
            <% if(count==0){ %>
            	<h3>작성한 회원이 아닙니다.</h3>
            	<h3>5초후에 다시 레시피 페이지로 돌아갑니다.</h3>
            	<meta http-equiv="refresh" content="5; url=<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=dishId%>">
            <% }else{ %>
            <form action="<%=request.getContextPath()%>/UpdateRecipe.do" class="updateForm" 
            method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="recipe__details__pic">
                        <div class="recipe__details__pic__item">
	                        <h4>레시피 사진</h4>
	                        <% if(dishId<1134) {%>
	                        		 <img class="recipe__details__pic__item"
	                               			 src="<%=dishvo.getDish_photo() %>" alt=""> 
	                        <%}else{%>
	                           		 <img class="recipe__details__pic__item"
	                               			 src="pic/<%=dishvo.getDish_photo() %>" alt="">
	                        <%} %>
	                       <input type="file" class="form-control" id="dish_photo" name="dish_photo">
						</div>
                    </div>
                </div>
               
                <div class="form-group">
                    <div class="recipe__details__text">
                    	<br><br><input type="hidden" name="dish_code" value="<%=dishId %>"/>
                    	<hr><h5>요리명</h5> 
                    	<input type="text" class="form-control" name="dish_name" value="<%=dishvo.getDish_name()%>"/>
                        <ul>
                        	<li><span>재료</span></li>
                        	<li>
                        		<span class="ingredient">
		                        	<%
		                        		for(int i=0; i<ingrelist.size(); i++){
		                        			IngredientVO vo = ingrelist.get(i);
		                        			if(vo.getIngredient_name()!=null){
		                        	%>
		                        			<input type="text" idx="<%=i+1%>" name="ingredient_name<%=i+1%>" 
		                        			class="form-control ingre" value="<%=vo.getIngredient_name()%>"/>
		                        	<%
		                        			}
		                        		}
		                        	%>
                           		 </span>
                           </li>
                           <li>
                           	재료추가개수<input id="ingrenum" name="ingrenum" type="text" value="1" width="50px"/>
							<input class="addIngre" type="button" value="확인"/>
							<div class="IngredientList">
							</div>
                           </li>
                        </ul>
                    </div>
                </div>
                
                 <div class="recipe__details__tab">
                     <span>메뉴얼</span>
                     <input type="button" value="메뉴얼 추가" class="btn-insert"/><br><br>
                     <%
                     	for(int i=0; i<MuaList.size(); i++){
                     		RecipeVO rcpvo = MuaList.get(i);
                     %>
                     	<div class="form-group manual_<%=i+1%>">
                     	<div class="manualnum" idx="<%=i+1%>"><%=rcpvo.getRcp_num() %></div>
                     <% if(rcpvo.getRcp_att()!=null){ 
                     		if(dishId<1134){
                     %>
                     	<img class="manualimg" alt="메뉴얼<%=i+1%>" src="<%=rcpvo.getRcp_att()%>"/>
                     <% } else{ %>
                     	<img class="manualimg" alt="메뉴얼<%=i+1%>" src="pic/<%=rcpvo.getRcp_att()%>"/>
                     <%		}
                     	} %>
                     	<input type="text" name="rcp_manual<%=i+1 %>" class="manualcont" value="<%=rcpvo.getRcp_manual().replace("", "\r").replace("<br>", "\n") %>"/>
                     	<input type="file" name="rcp_att" class="rcp_att"/>
                     	<br>
                     	</div>
                     <%	} %>
                    </div>
                	<input type="submit" value="수정하기">
            	</form>
            	<%} %>
            </div>
        </div>
    </section>
    <!-- Recipe Update Section End -->

	 <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
</body>

</html>