<%@page import="vo.MemberVO"%>
<%@page import="java.util.List"%>
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
	
	            
            
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
 
 
 <script>
 
 $(function(){
 	
	 $('.Abutton').on('click',function(){
			
		 $('#modiModal').modal('show');
		 
	})
 	
})
	 
	 
 
</script>
 
 
 
 
  <style type="text/css">     
     
 .mypage-set-bg{
       height: 190px;
 }
   
   .mypage__sidebar{
       padding: 0px;
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
       padding: 0;
   }
   
   .chkpass-btn{
   	padding: 5px 15px;
   }
   .chkpass {
   	margin: 100px 0px 0 35px;
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
    
    
    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            

                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        
                        <!-- 본내용 내역 -->
                        <div class="post1">
                        <img src="img/blog/details/details-pic.jpg" alt="" width="350">
                        <p class="title">웃긴요리의 제목 </p>
                        <p class="cont">내용</p>
                        </div>
                        
                        
                        
                        <span>사용자 이메일</span><br><br><br>
                        <br>
                        <input type="button" class="Abutton site-btn" value="등록" > 
                        <br><br><br>
                        
                        
                        <hr>
                        
                       <input size="36" type="text" name="mtitle"/>
                       
                        <button class="btn btn-primary" id="wsend" type="button">등록</button>       
                    </div>

                    </div>
            </div>
   </section>  
            
           
 
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
					<form id="wform">
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