<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="<%=request.getContextPath() %>/js/jquery.serializejson.min.js"></script>
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
/*             display: flex; */
            float: left;
            padding: 65px 0;
        }
        
        .chkpass-btn{
        	padding: 5px 15px;
        }
        .chkpass {
        	margin: 100px 0px 0 35px;
		}
		.withdraw-btn{
			float:right;
			width:50px;
			height: 30px;
			padding: 5px;
			background: #BDBDBD;
		}
		.btn {
		    width: 65px;
		    height: 40px;
		    padding: 8px;
		    margin-top: 20px;
		}
		.myInfo p{
			margin-bottom: 20px;
		}
		#modifyForm{display: none;}
		.tel__input{height: 32px; width: 45%;}
		label{width : 120px;}
		input#mem_tel2 {margin: 0 7px;}
		.pass{margin-left: 10px; color: red;}
    </style>
    
    <script>
		$(function(){
			
			// 수정 버튼 눌렀을 때(개인정보 수정)
			$('.modi-btn').on('click', function(){
				vali = $('.myInfo #name_ali').text();
				console.log(vali);
				vtel = $('.myInfo #tel').text();
				vtel1 = vtel.substr(0,3);
				vtel2 = vtel.substr(3,4);
				vtel3 = vtel.substr(7);
				
				$('#modifyForm input[name=name_ali]').val(vali);
				$('#modifyForm input[name=mem_tel1]').val(vtel1);
				$('#modifyForm input[name=mem_tel2]').val(vtel2);
				$('#modifyForm input[name=mem_tel3]').val(vtel3);
				$('.myInfo').empty().append($('#modifyForm'));
// 				vid = $('#id').val();
// 				vname = $('#name').val();
// 				vali = $('#name_ali').val();
// 				vgender=$('#gender').val();
// 				console.log(vid);
				$('#modifyForm').show();
			});
			
			// 수정 시 비밀번호 정규화 확인
			let pwchk = false;
			$("#modifyForm input[name=pass]").on("keyup", function () {
			    let pwvalue = $(this).val().trim();
			    const regpw = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*()]).{8,16}$/;
			
			    $('.pass_chk1').empty();
			    if (pwvalue.trim().length < 8 || pwvalue.trim().length > 16) {
			      $('.pass_chk1').text("비밀번호는 8~16자 입니다.");
			      pwchk = false;
			    } else if (!regpw.test(pwvalue)) {
			      $('.pass_chk1').text("8~16자의 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
			      pwchk = false;
			    } else {
			      $('.pass_chk1').text("확인");
			      pwchk = true;
			    }
			  });
			
			
			let pwchk2 = false;
			// 비밀번호 확인
			 $("#modifyForm input[name=pass_chk]").on("keyup", function () {
			    let pwvalue = $("#modifyForm input[name=pass]").val().trim();
			    let pwdcvalue = $(this).val().trim();
			
			    $('.pass_chk2').empty();
			    if (pwvalue === pwdcvalue) {
				    $('.pass_chk2').text("확인");
				    pwchk2 = true;
			    } else {
			    	$('.pass_chk2').text("비밀번호가 일치하지 않습니다.");
			    	pwchk2 = false;
			    }
			  })
			
			// 수정버튼 누른 후 취소버튼 눌렀을 때
			$('#modireset').on('click', function(){
				$('body').append($('#modifyForm'));
				$('#modifyForm').hide();
				
				// 수정해야할 곳 
				<% MemberVO member = (MemberVO) session.getAttribute("Member");
				if(member != null){
				String spass = (String)session.getAttribute("PASS"); %>
// 				vpass = "Testpass!1";
				
<%-- 				location.href = "<%=request.getContextPath()%>/jsp/MyInfo.do?pass="+vpass; --%>
				location.href = "<%=request.getContextPath()%>/jsp/MyInfo.do?pass=<%=spass%>";
				<% }%>
			});
			
			// 수정 확인 버튼
			$('#modiok').on('click', function(){
				var passvalue = $('#modifyForm input[name=pass]').val().trim().length;
				var vpass_chk = $('#modifyForm input[name=pass_chk]').val().trim().length;
				var vail = $('#modifyForm input[name=name_ali]').val().trim().length;
				var vtel1 = $('#modifyForm input[name=mem_tel1]').val().trim().length;
				var vtel2 = $('#modifyForm input[name=mem_tel2]').val().trim().length;
				var vtel3 = $('#modifyForm input[name=mem_tel3]').val().trim().length;
				
				if(passvalue < 1 || vpass_chk < 1 || vail < 1 || vtel1 <1 || vtel2 <1 || vtel3 <1){
					alert("입력하지 않은 항목이 있습니다.");
					return false;
				}else if(pwchk == false || pwchk2 == false){
					alert("형식에 맞게 입력해주십시오.");
					return false;
				}
				
				$.ajax({
					url:"<%=request.getContextPath()%>/jsp/UpdateMyPage.do",
					type:'post',
					dataType:'json',
					data:$('#modifyForm').serialize(),
					success: function(res){
						if(res == '성공'){
						location.href="<%=request.getContextPath()%>/jsp/MyInfo.do";
						}else{
							alert("회원 정보 수정 실패");
						}
					},
					error: function(xhr){
						alert("상태 : " + xhr.status);
					}
				})
				
			});
			
			// 탈퇴 버튼
			$('.withdraw-btn').on('click', function(){
				var check = confirm("정말 탈퇴하시겠습니까?");
				if(check == true){
// 					alert("탈퇴");
					location.href="<%=request.getContextPath()%>/jsp/DeleteMember.do";
				}else{
					alert("탈퇴를 취소합니다");
				}
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
                        <h2>My Info</h2>
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
                            <h4>My Page</h4>
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyPage.do">회원 정보</a></li>
                                <li><a href="./likedRecipe.jsp">찜한 레시피</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/MyRecipe.do">나의 레시피</a></li>
                                <li><a href="./myReply.jsp">나의 댓글</a></li>
                                <li><a href="./myOrder.jsp">주문 내역</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 order-md-1 order-1 myPage_board">
                    <div class="myInfo">
                    <%MemberVO vo = (MemberVO)request.getAttribute("myInfo"); %>
                    	<p><label>아이디</label> <span id="id"><%=vo.getMem_id() %></span></p>
                    	<p><label>이름</label> <span id="name"><%=vo.getMem_name() %></span></p>
                    	<p><label>닉네임</label> <span id="name_ali"><%=vo.getMem_ali() %></span></p>
                    	<p><label>성별</label> <span id="gender"><%=vo.getMem_gen() %></span></p>
                    	<p><label>전화번호</label> <span id="tel"><%=vo.getMem_tel() %></span></p>
                    	
                    	<input class="site-btn btn modi-btn" type="button" value="수정">  
                    </div>
                    <hr>
                    <div class="withdraw">
                    	<input class="site-btn btn withdraw-btn" type="button" value="탈퇴">  
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
	
	<form id="modifyForm">
	<p><label>아이디</label> <span id="id"><%=vo.getMem_id() %></span></p>
	<p><label>비밀번호</label> <input size="10" type="password" name="pass" /><span class ="pass pass_chk1"></span></p>
	<p><label>비밀번호 확인</label> <input size="10" type="password" name="pass_chk" /><span class="pass pass_chk2"></span></p>
	<p><label>이름</label> <span id="name"><%=vo.getMem_name() %></span></p>
  	<p><label>닉네임</label> <input size="10" type="text" name="name_ali"/></p>
	<p><label>성별</label> <span id="gender"><%=vo.getMem_gen() %></span></p>
  	<div class="tel__input">
		<p><label>전화번호</label></p>
		<input type="text" name="mem_tel1" id="mem_tel1" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" >
		<input type="text" name="mem_tel2" id="mem_tel2" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" >
		<input type="text" name="mem_tel3" id="mem_tel3" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" >
	</div>
  	<input class="site-btn btn" type="button" value="확인" id="modiok">
  	<input class="site-btn btn" type="button" value="취소" id="modireset">
  </form>


</body>

</html>