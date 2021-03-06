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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />



<script type="text/javascript">

		$(document).ready(function(){

		$(".question").click(function(){

		$(this).next().toggle("fast");

	});

});

 			
	$(function(){
	// 수정 버튼 눌렀을때 부분
	$('.Sbutton').on('click',function(){
		vtitle = $('.post1 #title').text();
		vcont = $('.post1 #cont').text();
		
				console.log(vali);
				$('.modifyForm input[name=title]').val(vtitle);
				$('.modifyForm input[name=cont]').val(vcont);
				$('.post1').empty().append($('#modifyForm'));
				$('#modifyForm').show();
				
			})
	// 수정버튼 누른 후 취소버튼 눌렀을 때
			$('#modireset').on('click', function(){
				$('body').append($('#modifyForm'));
				$('#modifyForm').hide();		
			
			
			})
			
			$('#modiok').on('click', function(){
			
				var title =$('#modifyForm input[name=title2]').val().trim().length;
				var cont  =$('#modifyForm input[name=cont2]').val().trim().length;
				
				if(title < 1 || cont < 1){
					alert("입력하지 않은 항목이 있습니다");
					return false;
				}
				
				$.ajax({
					url:"<%=request.getContextPath()%>/jsp/UpdatePost.do",
					type:'post',
					dataType:'json',
					data:$('#modifyForm').serialize(),
					success:function(res){
						if(res=='성공'){
						location.href="<%=request.getContextPath()%>/jsp/Post.do";
						}else{
							alert("FAQ 정보 수정 실패");
						}
					},
					error: function(xhr){
						alert("상태 : " + xhr.status);
					}
				})
			})
		})
		
		
</script>

<style type="text/css">

.question{
	font-size: 30px;
	margin: 65px;
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
	<div id="box_qna">


<!-- <ul> -->


	<!--//////////////////////////////////////////////////////////////////  -->
	<!-- <div>
    <li class="question">Question 1
    </li>
    
    
    <li class="answer">Answer2
	</li> -->
    
    
    <div class="post1">
	<%PostVO vo= (PostVO)request.getAttribute("post"); %>
	<span id="postcode"><%=vo.getPost_code() %></span>
	<span id="title"><%=vo.getPost_title() %></span>
	<span id="cont"><%=vo.getPost_cont() %></span>
	</div>
	
    <input type="button" class="Sbutton" id="popup_open_btn" value="수정">
	</div>
	
	
	
	
	<!--//////////////////////////////////////////////////////////////////  -->
	
	
</section>

<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>


	<form id="modifyForm">
	<p><span id="postcode2"><%=vo.getPost_code() %></span></p>
	<p><input size="10" type="text" name="title2"/></p>
    <p><input size="10" type="text" name="cont2"/></p>
	

	<input class="site-btn btn" type="button" value="확인" id="modiok">
  	<input class="site-btn btn" type="button" value="취소" id="modireset">
	
	</form>







</body>

</html>