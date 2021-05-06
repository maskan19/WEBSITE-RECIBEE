<%@page import="vo.DishVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<style>
.blog__sidebar__recent{
	margin-bottom: 15px;
}
.blog__sidebar__recent__item__pic img {
	width: 150px;
	height: 120px;
}
.recipe__item__pic img {
  height: 250px;
  width : 250px;
}
.pager,  .paging {
   float : left;
   margin :10px;
}
.pager{
  list-style-type: none;
}
.list td{
	width : 35%;
}
.view {
    margin-left: 30px;
    flex: 0 0 29%;
}
.viewimg{
	width : 16px;
	height : 16px;
}
.register{
	margin-left: 85%;
	margin-bottom: 5%;
	width : 70px;
	height: 30px;
	font-size:1.2em;
}
.product__pagination {
    padding-top: 10px;
    flex: inherit;
    text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%
	List<DishVO> recipelist = (List<DishVO>)request.getAttribute("list");
	int totalpage = (Integer)request.getAttribute("totalPage");
	int startpage = (Integer)request.getAttribute("startPage");
	int endpage = (Integer)request.getAttribute("endPage");
	int currentpage = (Integer)request.getAttribute("cpage");
	int totalCount = (Integer) request.getAttribute("totalCount");
	String word = (String) request.getAttribute("word");
	String mth_name = (String) request.getAttribute("mth_name");
%>
<script>
var _IS_SEARCH_RESTRICT = false;

$(document).ready(function() {
	ToggleCategory();
	
	//next눌렀을때 이벤트
	$(document).on('click','.next', function(){
		cc = parseInt($('.paging:last').text().trim()) + 1; 
		location.href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=" + cc+"&word=<%=word%>&mth_name=<%=mth_name%>";
	});
	
	//이전눌렀을때 이벤트
	$(document).on('click','.prev', function(){
		cc = parseInt($('.paging:first').text().trim()) -1; 
		location.href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=" + cc+"&word=<%=word%>&mth_name=<%=mth_name%>";
	});

	$(".submit").on("click", function(e){
		e.preventDefault();
			search = $(".search").val().trim();
		location.href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&word="+search+"&mth_name=";
	})
	
	$(".line_btn").on("click", function(){
		num = $(this).attr("idx");
		location.href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num="+num;
	})
	
	$(".register").on("click", function(){
		location.href="<%=request.getContextPath()%>/jsp/RecipeRgPossi.do";
	})
});


function goSearchRecipe(ca, val) {
	if (val == 'reco' && _IS_SEARCH_RESTRICT) {
		viewPremiumSearchModal();
	} else {
		$("#srRecipeFrm [name='" + ca + "']").val(val);
		$("[name='lastcate']").val(ca);
		$("#srRecipeFrm").submit();
	}
}

function doSetSearch(filters, val) {
	if (!filters || !val)
		return;
	$("[id^=li_" + filters + "_]").removeClass("active");
	// cancel
	if ($("#dsf_" + filters).val() == val) {
		$("#dsf_" + filters).val('');
	} else {
		$("#li_" + filters + "_" + val).addClass("active");
		$("#dsf_" + filters).val(val);
	}
}

function doDetailSearch() {
	$("[name=dsearch]").val("y");
	if ($("#ni_resource").val())
		$("[name=niresource]").val($("#ni_resource").val());
	$("#srRecipeFrm").submit();
}

function ToggleCategory() {
	$('#id_search_category').toggle();
	if ($('#id_search_category').is(":visible")) {
		$('#id_search_category_text').text('카테고리 닫기');
		$('#id_search_category_img').attr("src", 'img/recipe/arrow_up.png');
	} else {
		$('#id_search_category_text').text('카테고리 열기');
		$('#id_search_category_img').attr("src", 'img/recipe/arrow_down.png');
	}

}
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
  


	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/recipe/color.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text_recipe">
						<h2>Recipes</h2>
					</div>
					<div class="blog__sidebar__search">
						<form action="#">
							<input class="search" type="text" placeholder="Search...">
							<button type="submit" class="submit">
								<span class="icon_search"></span>
							</button>
						</form>
					</div>
					<div id="id_search_category" style="display: none"
						class="rcp_m_cate">
						<table width="100%" cellspacing="0" cellpadding="0">
							<colgroup>
								<col width="100px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th style="padding-top: 10px;"><span>방법별</span></th>
									<td>
										<div class="rcp_cate st3">
											<div class="cate_list">
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=끓이기">끓이기</a>
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=찌기">찌기</a>
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=굽기">굽기</a>
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=튀기기">튀기기</a>
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=볶기">볶기</a>
												<a href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=1&mth_name=기타">기타</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="rcp_cate_btn">
						<a href="javascript:ToggleCategory()"><span
							id="id_search_category_text">카테고리 열기</span><span><img
								id="id_search_category_img" src="img/recipe/arrow_down.png"></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Recipe Section Begin -->
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<h4>최근 본 레시피 목록</h4>
							<%
							
							Cookie[] cookies = request.getCookies();
							if(cookies!=null){
								for(int i = 0; i < cookies.length-1; i++){
									if(!cookies[i].getName().substring(0,4).equals("reci")) continue;
									System.out.println(cookies[i].getName() + "," + cookies[i].getValue());
							%>
								<div class="blog__sidebar__recent">
							<%
								for(int j = 0; j < recipelist.size(); j++){
									 String last = Integer.toString(recipelist.get(j).getDish_code());
									
									if(cookies[i].getValue().equals(last)){
							%>
								<a href="<%=request.getContextPath()%>/jsp/RecipeDetail.do?num=<%=recipelist.get(j).getDish_code() %>" class="blog__sidebar__recent__item">
									<div class="blog__sidebar__recent__item__pic">
									<%if(!recipelist.get(j).getDish_photo().substring(0,4).equals("http")){ %>
										<img src="pic/<%=recipelist.get(j).getDish_photo() %>" alt="">
										<%}else{ %>
										<img src="<%=recipelist.get(j).getDish_photo() %>" alt="">
										<%} %>
									</div>
									<div class="blog__sidebar__recent__item__text">
										<h6>
											<%=recipelist.get(j).getDish_name() %><br />
										</h6>
										<span><i class="fa fa-calendar-o"></i><%=recipelist.get(j).getDish_date().substring(0, 10) %></span>
									</div>
								</a>
							<%	
									}
								}
							%>
			
							</div>
							<%
								if(i>3) break;
									
								}
							}else{
							%>
					       		<div>최근 본 레시피가 없습니다.</div>
					       	<%		
							}
							%>
							
							
							
						</div>
						<div class="blog__sidebar__item">
							<h4>Search By</h4>
							<div class="blog__sidebar__item__tags">
								<a href="#">Apple</a> <a href="#">Beauty</a> <a href="#">Vegetables</a>
								<a href="#">Fruit</a> <a href="#">Healthy Food</a> <a href="#">Lifestyle</a>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-8 col-md-7">
						<div class="register"><input type="button" class="insert" value="레시피 등록"/></div>
						<div class="row">
							<%
								if(recipelist==null || recipelist.size()==0){
							%>
								<div>레시피가 존재하지 않습니다.</div>
								
							<%
								}else{
									for(int i=0; i<recipelist.size(); i++){
										DishVO vo = recipelist.get(i);
										int num = vo.getDish_code();
							%>
											<div class="view">
												<div class="blog__item">
													<div class="recipe__item__pic">
									<% if(num<1134) { %>
														<img src="<%=vo.getDish_photo() %>" alt="<%=vo.getDish_name()%>">
									<%} else{ %>
														<img src="pic/<%=vo.getDish_photo() %>" alt="<%=vo.getDish_name()%>">
									<% } %>
													</div>
													<div class="blog__item__text">
														<ul>
															<li><i class="fa fa-calendar-o"></i><%=vo.getDish_date().substring(0, 10) %></li>
															<li><i class="fa fa-comment-o"><%=vo.getDish_hit() %></i></li>
														</ul>
														<h3>
															<a href="#"><%=vo.getDish_name()%></a>
														</h3>
														<a idx="<%=vo.getDish_code()%>"href="#" class="line_btn">View Full Recipe
														<span class="arrow_right"></span></a>
													</div>
												 </div>
											</div>
									
							<%
									}
								}
							%>
								
						<div class="col-lg-12">
							<div class="product__pagination">
								<%
									if(startpage>1){
								%>
										<ul class="pager">
											<li><i class="fa fa-long-arrow-left prev">이전페이지</i></li>
										</ul>
								<%
									}
								%>
									<ul class="pagination pager">
								<%
									for(int i=startpage; i<=endpage; i++){
										if(currentpage==i){
								%>
											<li class="paging active"><%=i %></li>
								<% 
										}else{
								%>
											<li class="paging"><a  href="<%=request.getContextPath()%>/jsp/RecipeMain.do?cpage=<%=i%>&word=<%=word%>&mth_name=<%=mth_name%>"><%=i%></a></li>   
								<% 	
										}
									}
								%>	
									</ul>
									
								<%
										if(endpage < totalpage){
									
									%>		
											<ul class="pager">
												<li><i class="fa fa-long-arrow-right next">다음페이지</i></li>
											</ul>
											
									<%
											}
									%>	
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Recipe Section End -->

 		
    <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
		
</body>
</html>
    

    
