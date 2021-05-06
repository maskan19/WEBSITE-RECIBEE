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
<style type="text/css">
.breadcrumb__text > h2{
	display: inline-block;
	margin: 0px 30px;
}

</style>
</head>

<body oncontextmenu='return false' ondragstart='return false'
	onselectstart='return false'>
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

    <!-- Breadcrumb Section Begin -->
    <div class="container">
    <section class="breadcrumb-section set-bg" data-setbg="img/blog/details/header<%=(Math.round(Math.random()*3)+1) %>.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                    <%
                    int board_code=0;
                    if(session.getAttribute("board_code")!=null){
                    	board_code = (Integer)session.getAttribute("board_code");
                    }
                    String board_name="전체 게시판";
                    switch(board_code){
                    case 2: board_name="NOTICE";break;
                    case 3: board_name="EVENT";break;
                    case 4: board_name="요리 팁 게시판";break;
                    case 5: board_name="웃긴 요리 게시판";break;
                    default: break;
                    }
                    %>
                        <h2><%=board_name %></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    <!-- Breadcrumb Section End -->
            <% 
    		if (session.getAttribute("Member") != null) {
    			MemberVO mem = (MemberVO) session.getAttribute("Member");
    			if(board_code==2&&mem.getMem_grade()>10 || board_code==3&&mem.getMem_grade()>10 || board_code>3){
            %>
			<div class="button__center">
			<br><br><br>
			<button class="continue-application" onclick="location.href='<%=request.getContextPath()%>/jsp/Posting1.do'">
			    <div>
			        <div class="pencil"></div>
			        <div class="folder">
			            <div class="top">
			                <svg viewBox="0 0 24 27">
			                    <path d="M1,0 L23,0 C23.5522847,-1.01453063e-16 24,0.44771525 24,1 L24,8.17157288 C24,8.70200585 23.7892863,9.21071368 23.4142136,9.58578644 L20.5857864,12.4142136 C20.2107137,12.7892863 20,13.2979941 20,13.8284271 L20,26 C20,26.5522847 19.5522847,27 19,27 L1,27 C0.44771525,27 6.76353751e-17,26.5522847 0,26 L0,1 C-6.76353751e-17,0.44771525 0.44771525,1.01453063e-16 1,0 Z"></path>
			                </svg>
			            </div>
			            <div class="paper"></div>
			        </div>
			    </div>
			    POST NOW !
			</button>
			</div>
			<%}} %>

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="row">
                    <%
				List<PostVO> postList = (List<PostVO>) request.getAttribute("board");
				if (postList == null || postList.size() == 0) {
				%>
				<span>등록된 게시글이 없습니다.</span>
				<%
					} else {
						for (PostVO post : postList) {
							int reply = 0;
							String att = "blog-3.jpg";
							if (post.getPost_rpls() != null){
								reply = post.getPost_rpls().size();
							}
							if (post.getPost_atts() != null){
								att = post.getPost_atts().get(0).getPost_file();
							}
				%>
                    
                    
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="blog__item">
                                <div class="blog__item__pic blog__image" OnClick="location.href ='<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>'">

                                   <img src="pic/<%=att %>" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
								<li><i class="fa fa-calendar-o"></i> <%=post.getPost_date()%></li>
								<li><i class="fa fa-comment-o"></i> <%=reply %></li>
							</ul>
							<h5>
								<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><%=post.getPost_title() %></a>
							</h5>
							<%-- <p><%=post.getPost_cont() %></p> --%>
							<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <%
					}
					}
				%>
                        
                        
                    <!--     
                       <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="img/blog/blog-3.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">Visit the clean farm in the US</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                         -->
                        <!-- <div class="col-lg-12 button__center">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
	
	
</body>

</html>