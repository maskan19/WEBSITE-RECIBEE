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
		
		.drops:hover ul {
		    top: 14px!important;
		    left: 80px;
		    padding: 2px 5px;
		    width: max-content;
		}
		
		.drops ul {
/* 			width: 90px; */
			left:80px;
		}
		
/* 		.drops li{height: 35px;} */
    </style>

	<script>
		$(function(){
			$('.chkpass-btn').on('click', function(){
				vpass = $('#pass').val();
				console.log(vpass);
				<% MemberVO member = (MemberVO)session.getAttribute("Member");
						if(member == null){%>
						alert("로그인 후 이용할 수 있습니다.");
						location.href = "<%=request.getContextPath()%>/jsp/Login.do";
						<%}else{ String spass = member.getMem_pass(); %>
				if(vpass == '<%=spass%>'){
					location.href = "<%=request.getContextPath()%>/jsp/MyInfo.do";
				}else{
					alert('비밀번호를 틀렸습니다.');
				}
				<% } %>
			});
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
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar mypage__sidebar">
                        <div class="blog__sidebar__item">
                            <h4>Admin Page</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPage.do">관리자 정보</a></li>
                                <li><div class="header__top__right__language drops">
	                                <a href="#">회원 관리 </a>
	                                
		                                <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetAllMember.do">모든 회원</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/GetRPTMember.do">신고 회원</a></li>
		                                </ul>
	                                </div>
                                </li>
                                <li><div class="header__top__right__language drops">
                                	<a href="#">신고 내역</a>
                                	 <ul>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=0">레시피</a></li>
		                                	<li><a href="<%=request.getContextPath()%>/jsp/RPTPost.do?num=2">커뮤니티</a></li>
		                                </ul>
	                                </div>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                    <div class="chkpass" >
                    	<h5>PassWord</h5>
                    	<hr>
						<input id="pass" type="password" name="pass">
						<input class="site-btn chkpass-btn" type="button" value="확인">                    
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
	<jsp:include page="../common/jslink.jsp"></jsp:include>

</body>

</html>