<%@page import="java.util.List"%>
<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PostAttVO"%>
<%@page import="vo.PostrplVO"%>
<%@page import="vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
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

    <!-- Blog Details Hero Begin -->
    <div class="container">
    <section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                    
			<%
				PostVO post = (PostVO) request.getAttribute("post");
				MemberVO ali = (MemberVO) request.getAttribute("ali");
				if (post == null) {
				%>
				<h2>잘못된 접근입니다.</h2>
				<%
					} else {
					if(post.getPost_rpls()==null){
						post.setPost_rpls(new ArrayList<PostrplVO>());
					}
					if(post.getPost_atts()==null){
						post.setPost_atts(new ArrayList<PostAttVO>());
					}
					String id = post.getMem_id().substring(0, 4) + post.getMem_id().substring(4, post.getMem_id().length()).replaceAll(".","*");
					String img = "img/no-one-icon.png";
					
					if(ali.getMem_icon()!=null&& ali.getMem_icon()!="0"){
						img = ali.getMem_icon();
					}
				%>
                        <h2><%=post.getPost_title() %></h2>
                        <ul>
                            <li>By <%=ali %></li>
                            <li><%=post.getPost_date() %></li>
                            <li><%=post.getPost_rpls().size() %> Comments</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <!-- col-md-7 order-md-1 -->
                <div class="col-lg-12  order-1">
                    <div class="blog__details__text">
                        <%=post.getPost_cont() %>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                         <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="<%=img %>" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6><%=ali.getMem_ali() %></h6>
                                        <span><%=id %></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <%-- <ul>
                                        <li><span>Categories:</span> <%=post.getBoard_code() %></li>
                                    </ul> --%>
                                    <%
                                    MemberVO member = null;
                            		if (session.getAttribute("Member") != null) {
                            			member = (MemberVO) session.getAttribute("Member");
                            		
                            			if(member.getMem_ali().equals(ali.getMem_ali()) || member.getMem_grade()>10){
                            		
                                    %><div class="div__button">
                                    <button class="custom-btn btn-7" onclick="location.href='<%=request.getContextPath()%>/jsp/PostRw.do?post=<%=post.getPost_code()%>'"><span>수정</span></button>
                                    <button class="custom-btn btn-7" onclick="location.href='<%=request.getContextPath()%>/jsp/PostDelete.do?post=<%=post.getPost_code()%>&board=<%=post.getBoard_code()%>'"><span>삭제</span></button>
                                    </div>
                                </div>
                            </div>
                           <%}}} %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
    <!-- Related Blog Section Begin -->
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        <h2>최신 포스트</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            
            <%
				List<PostVO> postList = (List<PostVO>) request.getAttribute("Postlist");
				if (postList == null || postList.size() == 0) {
				%>
				<span>-</span>
				<%
					} else {
						for (PostVO rcpost : postList) {
							int reply = 0;
							String att = "blog-3.jpg";
							if (rcpost.getPost_rpls() != null){
								reply = post.getPost_rpls().size();
							}
							if (rcpost.getPost_atts() != null){
								att = rcpost.getPost_atts().get(0).getPost_file();
							}
				%>
				
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic blog__image">
							<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><img src="pic/<%=att %>" alt=""></a>
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> <%=rcpost.getPost_date()%></li>
								<li><i class="fa fa-comment-o"></i> <%=reply %></li>
							</ul>
							<h5>
								<a href="<%=request.getContextPath()%>/jsp/Post.do?post=<%=post.getPost_code()%>"><%=rcpost.getPost_title() %></a>
							</h5>
							<p><%=rcpost.getPost_cont() %></p>
						</div>
					</div>
				</div>
				<%
					}
					}
				%>
            </div>
        </div>
    </section>
    <!-- Related Blog Section End -->

   <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
	
</body>

</html>