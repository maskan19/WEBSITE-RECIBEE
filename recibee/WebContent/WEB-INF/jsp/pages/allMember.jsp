<%@page import="vo.PostVO"%>
<%@page import="vo.DishVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
    <style>          
        .mypage-set-bg{
            height: 190px;
        }
        .mypage__sidebar{
            padding: 0px;
        }
        .mypage__sidebar__parent{
        	flex:0 0 23%;
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
    		height: 30px;
        }
        .blog__item__text .blog__btn {
		    padding: 0 11px;
		    height: 27px;
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
		.drops:hover ul {
		    top: 14px!important;
		    left: 80px;
		    padding: 2px 5px;
		    width: max-content;
		}
		
		p.rpt__title {
		    width: 30%;
		}
		p.rpt__num{width:20%;}
		p.r2{color:#6f6f6f;}
		.drops ul {
/* 			width: 90px; */
			left:80px;
		}
		a:hover{color : black;}
		a:link{color: black;}
		a:visited{color: black;}
		#no{    margin: 15% 0 15px 25%;}
		.dismem{width:30%}
/* 		.drops li{height: 35px;} */
		.a{height: 100%;}
    </style>
	<script>
$(function(){
    	
    	$('.DDbtn').on('click', function(){
    		var check = confirm("?????? ???????????? ????????????????");
    		
    		if(check == true){
	    		var vdelete = $(this).parents(".mypage_recipe").find(".blog__item").attr("idx");
	    		location.href = "<%=request.getContextPath()%>/jsp/DeleteAdminMember.do?num=0&mem_id="+vdelete;
    		}else{
    			alert("????????? ???????????????.");
    		}
    	});
    	
    	$('.Rbtn').on('click', function(){
    		var check = confirm("?????? ????????? ????????????????");
    		
    		if(check == true){
	    		var vdel = $(this).parents(".mypage_recipe").find(".blog__item").attr("idx");
	    		location.href = "<%=request.getContextPath()%>/jsp/ActiveMember.do?num=0&mem_id="+vdel;
    		}else{
    			alert("????????? ???????????????.");
    		}
    	});
    	
    	
    	// next ??? ????????? ??? ?????????
    	$(document).on('click', '.next', function(){
    		cc = parseInt($('.pagin:last').text().trim()) + 1;
    		location.href="<%=request.getContextPath()%>/jsp/GetAllMember.do?cpage="+cc;
    	});
    	
    	// prev ????????? ??? ?????????
    	$(document).on('click', '.prev', function(){
    		cc = parseInt($('.paging:first').text().trim()) - 1;
    		location.href="<%=request.getContextPath()%>/jsp/GetAllMember.do?cpage="+cc;
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
	<jsp:include page="../common/hero.jsp"></jsp:include>
	<!-- Hero Section End -->
    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg mypage-set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>Admin Page</h2>
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
                            <h4>Admin Page</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPage.do">????????? ??????</a></li>
                                <li><div class="header__top__right__language drops">
	                                <a href="#">?????? ?????? </a>
	                                
		                                <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetAllMember.do">?????? ??????</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetRPTMember.do">?????? ??????</a></li>
		                                </ul>
	                                </div>
                                </li>
                                <li><div class="header__top__right__language drops">
                                	<a href="#">?????? ??????</a>
                                	 <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=0">?????????</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=2">????????????</a></li>
		                                </ul>
	                                </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                	<div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
                            <div class="blog__item">
                                <div class="blog__item__text">
                                    <p class="rpt__num">??????</p>
                                    <p class="rpt__title r2">??????</p>
                                    <p class="rpt__count">?????? ??????</p>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <p class="dismem">??????</p>
                                </div>
                            </div>
                    </div>
                    <%  List<MemberVO> list = null;
	                int totalpage = (Integer)request.getAttribute("totalPage");
	            	int startpage = (Integer)request.getAttribute("startPage");
	            	int endpage = (Integer)request.getAttribute("endPage");
	            	int currentpage = (Integer)request.getAttribute("cpage");
	            	int totalCount = (Integer) request.getAttribute("totalCount");
                	if(request.getAttribute("list")!=null){
	                	list = (List<MemberVO>)request.getAttribute("list");
                	}
	                
                	if(list.size() < 1){
	                %>	
                		<p id="no">????????? ????????? ????????????.</p>
	                <%}else{
	                	for(MemberVO li : list){
                		%>
                	
	                    <div class="col-lg-6 col-md-6 col-sm-6 mypage_recipe">
	                            <div idx="<%=li.getMem_id() %>" class="blog__item">
	                                <div class="blog__item__text">
	                                    <p class="rpt__num"><%=li.getMem_ali() %></p>
	                                    <p class="rpt__title"><a href="<%=request.getContextPath()%>/jsp/GetMemberInfo.do?mem_id=<%=li.getMem_id()%>"><%=li.getMem_id() %></a></p>
	                                    <p class="rpt__count"><%=li.getJoindate().substring(0,10) %></p>
	                                    <%if(li.getMem_dismember() == 1){ %>
	                                    <p class="dismem" >- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input style="margin-left:10px;" type="button" class="blog__btn DDbtn" name="delete" value="?????? ????????????" /></p>
	                                    <%}else if(li.getMem_dismember() == 999){ %>
	                                    <p class="dismem">????????????<input style="margin-left:10px;" type="button" class="blog__btn Rbtn" name="re" value="?????? ?????????" /></p>
	                                    <%}else{ %>
	                                    <p class="dismem" >?????? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input style="margin-left:10px;" type="button" class="blog__btn Rbtn" name="re" value="?????? ?????????" /></p>
	                                    <%} %>
	                                </div>
	                            </div>
	                    </div>
	                 <%}}%>
                	
                	
                		
<!--                      <hr> -->
                    <div class="product__pagination">
                    <% if(startpage>1){ %>
                        <a href="<%=request.getContextPath()%>/jsp/GetAllMember.do?cpage=<%=currentpage-3%>"><i class="fa fa-long-arrow-left prev"></i></a>
                    <%} %>
                    
                    	<div class = "pagination">
                    <%for(int i=startpage; i<=endpage; i++){
                    	if(currentpage==i){%>
	                        <a href="#" class="paging active"><%=i %></a>
                   		<%}else{%>
	                       <a  href="<%=request.getContextPath()%>/jsp/GetAllMember.do?cpage=<%=i%>"><%=i%></a>
                    <%}} %>
                        </div>
                        
                    <%if(endpage < totalpage){ %>    
                        <a href="<%=request.getContextPath()%>/jsp/GetAllMember.do?cpage=<%=currentpage+3%>"><i class="fa fa-long-arrow-right next"></i></a>
                    <%} %>
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
	<jsp:include page="../common/jslink2.jsp"></jsp:include>

</body>

</html>