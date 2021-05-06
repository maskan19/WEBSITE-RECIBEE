<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
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
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>WRITE</h2>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<script	src="https://www.google.com/recaptcha/api.js?render=6LdRjmUaAAAAABs-otm9UJVt5DmFiirnKUFH4eb_"></script>
</body>


<body oncontextmenu='return true' ondragstart='return true' onselectstart='return true'>
	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>글 작성</h4>
				<form action="#">
					<div class="row">
						<div class="col-lg-12 ">
							<div class="checkout__input">
								<p>제목</p>
								<input type="text">
							</div>
							<div class="checkout__input">
								<p>첨부파일</p>
								<input type="file" name="mem_icon" id="mem_icon"
									accept="image/*" onchange="setThumbnail(event);" />
							</div>
							<div class="checkout__input">
								<p>내용</p>
								<textarea id="story" name="contents" rows="10" cols="100%"></textarea>

							</div>
							<div class="checkout__input">
								<p>내용2</p>
								<div contentEditable="true" class="image_container"> type here
    							<img src="http://t2.gstatic.com/images?q=tbn:ANd9GcQCze-mfukcuvzKk7Ilj2zQ0CS6PbOkq7ZhRInnNd1Yz3TQzU4e&t=1" >
								</div>
							</div>
							<div class="checkout__input">
								<input type="submit" value="등록">
							</div>
							<input type="submit" value="파일 전송">
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
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				/* document.querySelector("div#image_container").removeChild(img); */
				/* $('.image_container').empty(); */
				document.querySelector(".image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>

</body>

</html>