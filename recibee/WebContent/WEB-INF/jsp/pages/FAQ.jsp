<%@page import="vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
 
<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />-->
<!-- <link rel="stylesheet" href="../jsp/css/ bootstrap.min.css"> -->
<script src="../js/jquery.serializejson.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	  
<script type="text/javascript">

		$(document).ready(function(){

		$(".question").click(function(){ 

		$(this).next().toggle("fast");

	});

});
	         
 			
	$(function(){
		
	//버튼눌렀을때 등록한다 

	

		 $('.Abutton').on('click',function(){
			
			 $('#modiModal').modal('show');

		 })	 
		
		 
 		$('#wsend').on('click', function(){
		
			location.href ="<%=request.getContextPath()%>/jsp/InsertPostFAQ.do";
			
 		})
 		
		$("#wform").on("submit", function(){
			return true;
		})
		
 	//삭제버튼 눌렀을때 부분
 		 $('.Dbutton').on('click',function(){
 			 var vdelete = $(this).parents(".post1").find("#postcode").attr("idx");
 				location.href ="<%=request.getContextPath()%>/jsp/DeletePostFAQ.do?post_code="+vdelete;
	 	})
	 	
		
	// 수정 버튼 눌렀을때 부분
	
	$('.Sbutton').on('click',function(){
		/* vtitle = $('.post1 #title').text(); */
		vtitle = $(this).parents(".post1").find(".title").text();
		/* vcont = $('.post1 #cont').text(); */
		vcont = $(this).parents(".post1").find(".cont").text();
		vpcd = $(this).parents(".post1").find(".postcode").text();
				$('#modifyForm input[name=title2]').val(vtitle);
				$('#modifyForm textarea[name=cont2]').val(vcont);
				$(this).parents('.post1').find("ul").append($('#modifyForm'));
				$('#modifyForm').show();
				
			})
			
			
	// 수정버튼 누른 후 취소버튼 눌렀을 때
			$('#modireset').on('click', function(){
				$('body').append($('#modifyForm'));
				$('#modifyForm').hide();		
			
			})
			
			
			//수정 확인버튼 
			$('#modiok').on('click', function(){
			    var vpostcode =$(this).parents(".post1").find("#postcode").attr("idx");  
				var vtitle =$('#modifyForm input[name=title2]').val();
				var vcont =$('#modifyForm textarea[name=cont2]').val();
				
				vcont11 = vcont.replace(/\n/g, "<br>");
				vtitle11 = vtitle.replace(/\n/g, "<br>");
			  	
				spancont = $('#modifyForm').prev();
				
				$('body').append($('#modifyForm'));
				$('#modifyForm').hide();
				
 				$(spancont).val(vtitle11); 
				
				
				if(vtitle < 1 || vcont < 1){
					alert("입력하지 않은 항목이 있습니다");
					return false;
				}
				
				$.ajax({
					url:"<%=request.getContextPath()%>/jsp/UpdatePostFAQ.do?postcode2="+vpostcode,
					type:'post',
					dataType:'json',
					data:$('#modifyForm').serialize(),
					success:function(res){ 
						location.href ="<%=request.getContextPath()%>/jsp/PostFAQ.do";
					},
					error: function(xhr){
					}
				})
			})
			
			
			
			
		})
		
		
</script>

<style type="text/css">

.question{
	font-size: 30px;
	margin: 35px;
}

.answer{
    display: none;
}

.spad{
	text-align: center;
}

li{
	list-style-type: none;
}

 #my_modal {
        display: none;
        width: 300px;
        padding: 20px 60px;
        background-color: #fefefe;
        border: 1px solid #888;
        border-radius: 3px;
    }

    #my_modal .modal_close_btn {
        position: absolute;
        top: 10px;
        right: 10px;
    }
.postcode{
	font-size: 40px;
	display:none;

}
.title{
	font-size: 30px;
}

.cont{
	font-size: 20px;
	margin: 30px;
}

#modifyForm{display: none;}

#modiModal {
	hegiht : 300px;
	position :fixed;
	z-index : 9999;
}

#modiModal.modal {
	hegiht : 30%;
}


</style>
</head>
<% 
	MemberVO member = (MemberVO)session.getAttribute("Member");
	System.out.println("member=>" + member);
	int num = 0;
	if(member!=null) num = member.getMem_grade();
%>
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
                        <h2>FAQ</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

	
	<section class="blog-details spad">

		<% if(num==999){
        %>
                        
		<input type="button" class="Abutton" value="등록"> 
        
         <%
         }
         %>
		
			<%
				List<PostVO> list = (List<PostVO>)request.getAttribute("list");
				for(PostVO vo : list ){  
			%>
			
	    <div class="post1">
			<div idx="<%=vo.getPost_code()%>" id="postcode">
				<ul>
					<hr>
						<li class="postcode"><%=vo.getPost_code()%></li>
						<li class="title question"><%=vo.getPost_title() %></li>
						<li class="cont answer"><%=vo.getPost_cont()%></li>
				</ul>
			</div>
		   <!--  if문으로 수정삭제등록버튼 -->
	
	     
	     <% if(num==999){
	     %>
         
        <input type="button" class="Sbutton" value="수정">
        <input type="button" class="Dbutton" value="삭제">
		 
        <%
        }
        %>
        
		</div> 
	    <%
         }
         %>
	</section>
	<form id="modifyForm">
		<%-- <span name="postcode2"><%=vo.getPost_code() %></span> --%>
<%-- 		<input type="hidden" name="postcode2" value="<%=vo.getpost_co"> --%>
		<p>제목<input size="50" type="text" name="title2"/></p>
	    <p>내용<textarea row="30" cols="60" type="text" name="cont2"></textarea></p>
	
		<input class="site-btn btn hh" type="button" value="확인" id="modiok">
	  	<input class="site-btn btn" type="button" value="취소" id="modireset">
	
	</form>
	
	
	<!-- modal start -->
	<!-- Modal -->
	<div id="modiModal" class="modal fade" role="dialog">
		<div class="modal-dialog" style="margin: 15.75rem auto;">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">새로운 FQA 등록 </h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form id="wform" action="<%=request.getContextPath()%>/jsp/InsertPostFAQ.do">
						<p>제목</p>
						<input size="36" type="text" name="mtitle"/>
						<p>내용</p>
						<textarea class="txt" name="mcontent" rows="10" cols="40"></textarea>
						<br>
						<div class="modal-footer">
				 	<button class="btn btn-primary" id="wsend" type="submit">전송</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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
	<jsp:include page="../common/jslink.jsp"></jsp:include>
</body>
</html>