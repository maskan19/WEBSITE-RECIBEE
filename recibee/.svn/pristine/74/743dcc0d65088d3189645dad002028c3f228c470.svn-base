<%@page import="vo.PostAttVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberVO"%>
<%@page import="vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
</head>

<body oncontextmenu='return true' ondragstart='return true'
	onselectstart='return true'>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
  <!-- Humberger Header Section Begin -->
	<jsp:include page="../common/humberger_header.jsp"></jsp:include>
	<!-- Humberger Header SectionEnd -->

  <script src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>
	<%
	PostVO post = (PostVO) request.getAttribute("post");
	MemberVO ali = (MemberVO) request.getAttribute("ali");
	if (post == null) {
	%>
	<h2>잘못된 접근입니다.</h2>
	<%
		} else {
		if(post.getPost_atts()==null){
			post.setPost_atts(new ArrayList<PostAttVO>());
		}
	%>
  <!-- Checkout Section Begin -->
  <section class="checkout spad">
    <div class="container">
      <div class="checkout__form">
        <h4>게시글 작성</h4>
        <%--  --%>
      <form action="<%=request.getContextPath() %>/PostUpdate.do" method="post" enctype="multipart/form-data"> 
          <div class="row">
            <div class="col-lg-12 ">
              <div class="checkout__input">
                <p>제목<span>*</span><span class="checker"></span>
                </p>
                <input type="text" name="post_title" id="post_title" onkeypress="return MoveTab(this, event)" value="<%=post.getPost_title() %>">
              </div>

              <div class="row">
                <div class="col-lg-12">
                  <div class="checkout__input">
                    <p>내용<span>*</span><span class="checker"></span></p>
                    
                    <%
                    int fileno = 1;
                    for (PostAttVO att : post.getPost_atts()){
                    	%>
                    	<div class="tel__input">
                      <label for="file<%=fileno%>">파일 첨부하기</label>
                      <input type="file" class="files" name="file<%=fileno%>" id="file<%=fileno%>" accept="image/*"
                        onchange="setThumbnail(event);" />
                      <input class="filepath" id="filepath<%=fileno%>" value="<%=att.getPost_file()%>">
                      <button type="button" class="deleter">- 첨부파일 삭제</button>
                    </div>
                   <%
                   fileno ++;
                    }%>
                    <div class="tel__input">
                      <label for="file<%=fileno%>">파일 첨부하기</label>
                      <input type="file" class="files" name="file<%=fileno%>" id="file<%=fileno%>" accept="image/*"
                        onchange="setThumbnail(event);" />
                      <input class="filepath" id="filepath<%=fileno%>" value="파일을 선택하세요.">
                      <button type="button" class="adder">+ 첨부파일 추가</button>
                    </div>
                    
                    <input type="hidden" name="post_code" id="post_code" value="<%=post.getPost_code()%>">
                    <input type="hidden" name="post_cont" id="post_cont">
                    <!-- </p> -->
                    <div class="image_container" contentEditable="true" id="cont">
                    <%=post.getPost_cont() %>
                    </div>
                    <%} %>
                  </div>
                </div>

              </div>

              <br><br>
              <div class="div__flex__center ">
                <div class="button__center">
                  <button  class="site-btn" onclick="getInnerHTML();" >등록</button>
                </div>
              </div>
              <br><br>
              <div class="row"></div>
            </div>
          </div>
       </form>
      </div>
    </div>
  </section>
  <!-- Checkout Section End -->




	<!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
	<script>
	//사진 추가
		function setThumbnail(event) {
			let id = event.target.id + "_att";
			let reader = new FileReader();

			$(reader).on("load", function(event) {
				let img = document.createElement("img");
				img.setAttribute("id", id);
				img.setAttribute("src", event.target.result);
				$('#' + id).remove();
				document.querySelector(".image_container").appendChild(img);
			});

			if (event.target.files[0] != undefined) {
				reader.readAsDataURL(event.target.files[0]);
			} else {
				$('#' + id).remove();
			}
		}
		function getInnerHTML() {
			let cont = document.getElementById('cont').innerHTML;
			let cont_arr = cont.split('\"');
			let att = document.getElementsByClassName('filepath')[0].value;

			for(i=0; i<cont_arr.length; i++){
				let j =0;
			  if(cont_arr[i]==" src="){
				  console.log(cont_arr + " : " + document.getElementsByClassName('filepath')[j].value);
				  cont_arr[i+1] = document.getElementsByClassName('filepath')[j].value;
				  j++;
			  }
			  
			}

			let post_cont = cont_arr.join('"');
			
			document.getElementById('post_cont').value=post_cont;
			
			
			} 
	</script>
	<script type="text/javascript">
		$(function() {
			//라벨 클릭
			$('.checkout__input').on('change', '.tel__input', function() {
				let cur = $("input[type='file']", this).val();
				console.log(cur);
				
				if(cur!=""){
						$(".filepath", this).val(cur);
				}else
						$(".filepath", this).val("파일을 선택하세요.");
			});
			//버튼 추가
			$(".checkout__input").on("click", ".adder", function() {
				console.log($(this));
				let bt_class = $(this).attr("class"); //adder
				let input_id = Number($(this).siblings("label").next().attr("id").substring(4))+1 //1
				let code = '<div class="tel__input">';
				code += '<label for="file' + input_id + '">파일 첨부하기</label>';
				code += '<input type="file" class="files" name="file' + input_id + '" id="file' + input_id + '" accept="image/*"';
				code += 'onchange="setThumbnail(event);" />';
				code += '<input class="filepath" id="filepath' + input_id +'"value="파일을 선택하세요.">';
				code += '<button type="button" class="adder">+ 첨부파일 추가</button>';
				code += '</div>';
				$(this).html("- 첨부파일 삭제");
				$(this).attr("class", "deleter");
				$(".tel__input").last().after(code);
				
				$(".deleter").on("click", function(){
					$(this).parents(".tel__input").remove();
					
				})
			})
			
			$(".checkout__input").on("click", ".deleter", function() {
				let get_id = file + $(this).siblings("label").next().attr("id").substring(4) //1
				if($(".image_container").find(img).attr('id')==get_id){
					console.log(this);
				}
			})
			
		});
	</script>

</body>

</html>