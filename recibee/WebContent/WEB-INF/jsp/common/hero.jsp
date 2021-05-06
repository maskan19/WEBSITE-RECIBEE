<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="hero__search">
					<div class="div__top__layer">
						<div class="hero__search__form">
							<form action="<%=request.getContextPath()%>/jsp/Search.do">
								<div class="hero__search__categories dropdown">
									<select name="feild" class="dropdown" placeholder="All Category">
										<option value="all" selected>All Category</option>
										<option value="recipe">레시피</option>
										<option value="prod">상품</option>
										<option value="board4">요리 팁 게시판</option>
										<option value="board5">웃긴 요리 게시판</option>
									</select>
								</div>
								<input type="text" name="keyword" placeholder="What do you need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>