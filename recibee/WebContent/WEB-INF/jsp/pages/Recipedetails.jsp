<%@page import="vo.DishreplyVO"%>
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="../js/jquery.serializejson.min.js"></script>
<!-- Hero Section Begin -->
   <jsp:include page="../common/hero.jsp"></jsp:include>
   <!-- Hero Section End -->
<style>
.recipehome{
   font-size : 150px;
}
.manualimg{
   width : 30%;
   height : 30%;
}
.manualcont{
   font-size: 1.2em;
   color: black;
}
.ingredient{
   font-size: 1.1em;
}
.manualnum{
   background : orange;
   color : white;
   border-radius: 100px 100px 100px 100px;
   width : 3%;
   height: 5%;
   text-align : center;
   font-size: 1.1em;
   font-weight: b
}
.recipe__details__text .heart-icon {
  display: inline-block;
  font-size: 1rem;
  color: #6f6f6f;
  padding: 13px 16px 13px;
  background: #f5f5f5;
}
.icon_heart_alt {
  font-family: "ElegantIcons";
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
}
.heart-icon{
   width : 50px;
   height: 50px;
}
.recipe__details__pic__item{
   width : 450px;
   height: 400px;
}
.RecipeChange{
   padding-left: 80%;
   padding-top: 1%;
   padding-bottom: 1%; 
}
.Reply{
	border: 2px dotted blue;
}
.cont{
	color : black;
}
</style>
<script>
 $(function(){
     //찜 추가
     $(".heart-icon-alt").click(function(){
 		var dishId = $(this).parents(".recipe__details__text").find("h3").attr("idx");
 		$.ajax({
 			url : "<%=request.getContextPath()%>/jsp/InsertLike.do",
 			 dataType : "json",
 			 type : "post",
 			 data : {"dish_code" : dishId},
 			 success : function(res){
 				alert("찜 성공");
 				location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+dishId;
 			 },
 			 error : function(xhr){
 				 alert("회원이 아닙니다.");
 			 }
 		})
 	 })
 	 
 	 //찜 삭제
 	$(".heart-icon").click(function(){
 		var dishId = $(this).parents(".recipe__details__text").find("h3").attr("idx");
 		$.ajax({
 			url : "<%=request.getContextPath()%>/jsp/DeleteLike.do",
 			 dataType : "json",
 			 type : "post",
 			 data : {"dish_code" : dishId},
 			 success : function(res){
 				alert(res);
 				location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+dishId;
 			 },
 			 error : function(xhr){
 				 
 			 }
 		})
 	})
    
   $(".deleteRecipe").on("click", function(){
       var dishId = $(this).parents(".recipe-details").find("h3").attr("idx");
       $.ajax({
          url : "<%=request.getContextPath()%>/jsp/RecipeDelete.do",
          dataType : "json",
          type : "get",
          data : {"dish_code" : dishId},
          success : function(res){
             if(res=="삭제 성공"){
                alert(res);
                location.href = "<%=request.getContextPath()%>/jsp/RecipeMain.do";
             }else{
                alert(res);
             }
          },
          error : function(xhr){
             alert("작성한 회원이 아닙니다.");
          }
       })
    })
    
    $(".updateRecipe").on("click", function(){
       var dishId = $(this).parents(".recipe-details").find("h3").attr("idx");
       location.href="<%=request.getContextPath()%>/jsp/RecipeUpdate.do?num="+dishId;
    })
    
    $(".AdminupdateRecipe").on("click", function(){
       var dishId = $(this).parents(".recipe-details").find("h3").attr("idx");
       location.href="<%=request.getContextPath()%>/jsp/RecipeUpdate.do?num="+dishId;
    })
    
     $(".AdmindeleteRecipe").on("click", function(){
       var dishId = $(this).parents(".recipe-details").find("h3").attr("idx");
       $.ajax({
          url : "<%=request.getContextPath()%>/jsp/RecipeAdminDelete.do",
          dataType : "json",
          type : "get",
          data : {"dish_code" : dishId},
          success : function(res){
             if(res=="삭제 성공"){
                alert(res);
                location.href = "<%=request.getContextPath()%>/jsp/RecipeMain.do";
             }else{
                alert(res);
             }
          },
          error : function(xhr){
             alert("작성한 회원이 아닙니다.");
          }
       })
    })
    
    $("#insertReply").on("click", function(){
    	var dishId = $(this).parents("#tabs-2").find(".recipe__details__tab__desc").attr("idx");
    	var ReplyCont = $(this).parents("#tabs-2").find(".replycont").val();
    	$.ajax({
            url : "<%=request.getContextPath()%>/jsp/InsertReply.do",
            dataType : "json",
            type : "get",
            data : {"dish_code" : dishId, "drpl_cont" : ReplyCont},
            success : function(res){
            	if(res="추가 성공"){
               		alert(res);
               		location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+dishId;
            	}
             },
             error : function(xhr){
            	alert("로그인을 하세요.")
            	location.href="<%=request.getContextPath()%>/jsp/Login.do";
             }
         })
   	 })
   	 
   	 $(".replyDelete").on("click", function(){
   		 var replycode = $(this).parents(".Reply").attr("idx");
   		 var dishId = $(this).parents("#tabs-2").find(".recipe__details__tab__desc").attr("idx");
   		$.ajax({
            url : "<%=request.getContextPath()%>/jsp/DeleteReply.do",
            dataType : "json",
            type : "get",
            data : {"reply_code" : replycode, "dish_code" : dishId},
            success : function(res){
               	if(res=="삭제 성공"){
            		alert(res);
               		location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+dishId;
               	}
             },
             error : function(xhr){
            	alert("로그인을 안되어 있거나 작성한 회원이 아닙니다.");
            	location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+dishId;
             }
         })
   	 })
 })
</script>
</head>
<body>
<%
   DishVO dishvo = (DishVO)request.getAttribute("DishVo");
   List<IngredientVO> ingrelist = (List<IngredientVO>)request.getAttribute("Ingredientlist");
   List<RecipeVO> MuaList = (List<RecipeVO>)request.getAttribute("ManualList");
   int dishId = (Integer) request.getAttribute("DishId");
   int count = (Integer) request.getAttribute("count");
   String MemAli = (String) request.getAttribute("MemAli");
   String result = (String) request.getAttribute("result");
   int mem_grade = (Integer) request.getAttribute("mem_grade");
   List<DishreplyVO> replylist = (List<DishreplyVO>) request.getAttribute("replylist");
   int ReplyCount = (Integer) request.getAttribute("ReplyCount");
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
                        <h2><%=dishvo.getDish_name() %> DETAIL</h2>
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

    <!-- Product Details Section Begin -->
    <section class="recipe-details spad">
       <% if(mem_grade==999){ %>
          <div class="RecipeChange">
             <input type="button" value="관리자 레시피 수정" class="AdminupdateRecipe"/>
             <input type="button" value="관리자 레시피 삭제" class="AdmindeleteRecipe"/>
          </div>
       <%} else{ %>
          <div class="RecipeChange">
             <input type="button" value="레시피 수정" class="updateRecipe"/>
             <input type="button" value="레시피 삭제" class="deleteRecipe"/>
          </div>
       <%  } %>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="recipe__details__pic">
                        <div class="recipe__details__pic__item">
                           <%if(dishId<1134){ %>
                                  <img class="recipe__details__pic__item"
                                         src="<%=dishvo.getDish_photo() %>" alt="<%=dishvo.getDish_name() %>">
                             <%}else{ %>
                                <img class="recipe__details__pic__item"
                                   src="pic/<%=dishvo.getDish_photo() %>" alt="<%=dishvo.getDish_name() %>">
                             <%} %>
                  </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="recipe__details__text">
                        <h3 idx="<%=dishvo.getDish_code()%>"><%=dishvo.getDish_name() %></h3>
                        <div class="primary-btn">조회수 : <%=dishvo.getDish_hit()+1%> / 작성자 : <%=MemAli%></div>
                         <% if(count==1){ %>
                        	<a class="heart-icon"><img src="pic/icon_heart.png"></a>
                        <% } else {%>
                        	<a class="heart-icon-alt"><img src="pic/icon_heart_alt.png"></a>
                        <% } %>
                        <ul>
                           <li><h4>재료</h4><br></li>
                           <li><span class="ingredient">
                           <%
                              for(int i=0; i<ingrelist.size(); i++){
                                 IngredientVO vo = ingrelist.get(i);
                                 if(vo.getIngredient_name()!=null){
                                	 if(i>0){
                           %>
                                 <span>,</span>
                           <%
                                	 }
                            %>
                            		<%=vo.getIngredient_name()%>
                            <% 
                                 }
                              }
                           %>
                            </span></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-lg-12">
                    <div class="recipe__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Manual</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Comment <span>(<%=ReplyCount %>)</span></a>
                            </li>
                     </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="recipe__details__tab__desc">
                                    <h4>메뉴얼</h4>
                                    <%
                                       for(int i=0; i<MuaList.size(); i++){
                                          RecipeVO rcpvo = MuaList.get(i);
                                    %>
                                       <div class="manualnum"><%=rcpvo.getRcp_num() %></div>
                                    <% if(rcpvo.getRcp_att()!=null){ 
                                          if(dishId<1134){
                                    %>
                                       <img class="manualimg" alt="메뉴얼<%=i %>" src="<%=rcpvo.getRcp_att()%>"/>
                                    <% } else{ %>
                                       <img class="manualimg" alt="메뉴얼<%=i %>" src="pic/<%=rcpvo.getRcp_att()%>"/>
                                    <%      }
                                       } %>
                                       <p class="manualcont"><%=rcpvo.getRcp_manual() %></p>
                                    <%   } %>
                                </div>
                            </div>
                            
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="recipe__details__tab__desc" idx="<%=dishId %>">
                                    <h6>댓글등록하기</h6>
                                  	<textarea cols="30" rows="10" class="replycont" name="replycont"/></textarea><br>
                                   	
                                    <input type="button" id="insertReply" value="댓글 쓰기"> 
                                </div>
                                <br><br><br>
                                <div class="ReviewList">
                                <% 
                                	for(int i=0; i<replylist.size(); i++){ 
                                	      DishreplyVO vo = replylist.get(i);
                                %>
                                	<div class="Reply" idx="<%=vo.getDrpl_code()%>">
                                		<span>작성자 : <%=vo.getMem_id() %></span>
                                		<span>날짜 : <%=vo.getDrpl_date().substring(0,10) %></span><br><br>
                                		<p class="cont">내용</p>
                                		<div><%=vo.getDrpl_cont()%></div>
                                		<input type="button" class="replyDelete" value="댓글삭제"/>
                                	</div>
                                	<br>
                                <%} %>
                             </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Footer Section Begin -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
   <!-- Footer Section End -->

   <!-- Js Plugins -->
   <jsp:include page="../common/jslink.jsp"></jsp:include>
</body>

</html>