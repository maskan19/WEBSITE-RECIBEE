<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<!-- Meta Font Css Styles -->
<jsp:include page="../common/csslink.jsp"></jsp:include>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a78b66c356cb847f7382c897cf8e2653"></script>
<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-faddddddmily:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
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
                              All Categories
                              <span class="arrow_carrot-down"></span>
                              <ul class="header__menu__dropdown">
                                 <li>Recipe</li>
                                 <li>Board1</li>
                                 <li>Shop</li>
                              </ul>
                           </div>
                           <input type="text" placeholder="What do yo u need?">
                           <button type="submit" class="site-btn">SEARCH</button>
                     </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/recipe/color.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text_recipe">
						<h2>Recipes</h2>
					</div>
					<div class="blog__sidebar__search">
						<form action="#">
							<input type="text" placeholder="Search...">
							<button type="submit">
								<span class="icon_search"></span>
							</button>
						</form>
					</div>
					<div id="id_search_category" style="display: none"
						class="rcp_m_cate">
						<table width="100%" cellspacing="0" cellpadding="0">
							<colgroup>
								<col width="100px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th style="padding-top: 10px;"><span>종류별</span> <span>상황별</span>
										<span>재료별</span> <span>방법별</span></th>
									<td>
										<div class="rcp_cate st3">
											<div class="cate_list">
												<a href="javascript:goSearchRecipe('cat4','')" class="active">전체</a>
													<a href="javascript:goSearchRecipe('cat4','63')">밑반찬</a>
													<a href="javascript:goSearchRecipe('cat4','56')">메인반찬</a>
													<a href="javascript:goSearchRecipe('cat4','54')">국/탕</a>
													<a href="javascript:goSearchRecipe('cat4','55')">찌개</a>
													<a href="javascript:goSearchRecipe('cat4','60')">디저트</a>
													<a href="javascript:goSearchRecipe('cat4','53')">면/만두</a>
													<a href="javascript:goSearchRecipe('cat4','52')">밥/죽/떡</a>
													<a href="javascript:goSearchRecipe('cat4','61')">퓨전</a>
													<a href="javascript:goSearchRecipe('cat4','57')">김치/젓갈/장류</a>
													<a href="javascript:goSearchRecipe('cat4','65')">양식</a>
													<a href="javascript:goSearchRecipe('cat4','64')">샐러드</a>
													<a href="javascript:goSearchRecipe('cat4','68')">스프</a>
													<a href="javascript:goSearchRecipe('cat4','66')">빵</a>
													<a href="javascript:goSearchRecipe('cat4','69')">과자</a>
													<a href="javascript:goSearchRecipe('cat4','62')">기타</a>
											</div>
											<div class="cate_list">
												<a href="javascript:goSearchRecipe('cat2','')" class="active">전체</a>
													<a href="javascript:goSearchRecipe('cat2','12')">일상</a>
													<a href="javascript:goSearchRecipe('cat2','18')">초스피드</a>
													<a href="javascript:goSearchRecipe('cat2','13')">손님접대</a>
													<a href="javascript:goSearchRecipe('cat2','19')">술안주</a>
													<a href="javascript:goSearchRecipe('cat2','21')">다이어트</a>
													<a href="javascript:goSearchRecipe('cat2','15')">도시락</a>
													<a href="javascript:goSearchRecipe('cat2','43')">영양식</a>
													<a href="javascript:goSearchRecipe('cat2','17')">간식</a>
													<a href="javascript:goSearchRecipe('cat2','45')">야식</a>
													<a href="javascript:goSearchRecipe('cat2','20')">푸드스타일링</a>
													<a href="javascript:goSearchRecipe('cat2','46')">해장</a>
													<a href="javascript:goSearchRecipe('cat2','44')">명절</a>
													<a href="javascript:goSearchRecipe('cat2','14')">이유식</a>
													<a href="javascript:goSearchRecipe('cat2','22')">기타</a>
											</div>
											<div class="cate_list">
												<a href="javascript:goSearchRecipe('cat3','')" class="active">전체</a>
													<a href="javascript:goSearchRecipe('cat3','70')">소고기</a>
													<a href="javascript:goSearchRecipe('cat3','71')">돼지고기</a>
													<a href="javascript:goSearchRecipe('cat3','72')">닭고기</a>
													<a href="javascript:goSearchRecipe('cat3','23')">육류</a>
													<a href="javascript:goSearchRecipe('cat3','28')">채소류</a>
													<a href="javascript:goSearchRecipe('cat3','24')">해물류</a>
													<a href="javascript:goSearchRecipe('cat3','50')">달걀/유제품</a>
													<a href="javascript:goSearchRecipe('cat3','33')">가공식품류</a>
													<a href="javascript:goSearchRecipe('cat3','47')">쌀</a>
													<a href="javascript:goSearchRecipe('cat3','32')">밀가루</a>
													<a href="javascript:goSearchRecipe('cat3','25')">건어물류</a>
													<a href="javascript:goSearchRecipe('cat3','31')">버섯류</a>
													<a href="javascript:goSearchRecipe('cat3','48')">과일류</a>
													<a href="javascript:goSearchRecipe('cat3','27')">콩/견과류</a>
													<a href="javascript:goSearchRecipe('cat3','26')">곡류</a>
													<a href="javascript:goSearchRecipe('cat3','34')">기타</a>
											</div>
											<div class="cate_list">
												<a href="javascript:goSearchRecipe('cat1','')" class="active">전체</a>
													<a href="javascript:goSearchRecipe('cat1','6')">볶음</a>
													<a href="javascript:goSearchRecipe('cat1','1')">끓이기</a>
													<a href="javascript:goSearchRecipe('cat1','7')">부침</a>
													<a href="javascript:goSearchRecipe('cat1','36')">조림</a>
													<a href="javascript:goSearchRecipe('cat1','41')">무침</a>
													<a href="javascript:goSearchRecipe('cat1','42')">비빔</a>
													<a href="javascript:goSearchRecipe('cat1','8')">찜</a>
													<a href="javascript:goSearchRecipe('cat1','10')">절임</a>
													<a href="javascript:goSearchRecipe('cat1','9')">튀김</a>
													<a href="javascript:goSearchRecipe('cat1','38')">삶기</a>
													<a href="javascript:goSearchRecipe('cat1','67')">굽기</a>
													<a href="javascript:goSearchRecipe('cat1','39')">데치기</a>
													<a href="javascript:goSearchRecipe('cat1','11')">기타</a>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="rcp_cate_btn">
						<a href="javascript:ToggleCategory()"><span
							id="id_search_category_text">카테고리 열기</span><span><img
								id="id_search_category_img" src="img/recipe/arrow_down.png"></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Breadcrumb Section End -->

	<!-- Recipe Section Begin -->
	<section class="blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-5">
					<div class="blog__sidebar">
						<div class="blog__sidebar__item">
							<h4>최근 본 레시피 목록</h4>
							<div class="blog__sidebar__recent">
								<a href="#" class="blog__sidebar__recent__item">
									<div class="blog__sidebar__recent__item__pic">
										<img src="img/blog/sidebar/sr-1.jpg" alt="">
									</div>
									<div class="blog__sidebar__recent__item__text">
										<h6>
											09 Kinds Of Vegetables<br /> Protect The Liver
										</h6>
										<span>MAR 05, 2019</span>
									</div>
								</a> <a href="#" class="blog__sidebar__recent__item">
									<div class="blog__sidebar__recent__item__pic">
										<img src="img/blog/sidebar/sr-2.jpg" alt="">
									</div>
									<div class="blog__sidebar__recent__item__text">
										<h6>
											Tips You To Balance<br /> Nutrition Meal Day
										</h6>
										<span>MAR 05, 2019</span>
									</div>
								</a> <a href="#" class="blog__sidebar__recent__item">
									<div class="blog__sidebar__recent__item__pic">
										<img src="img/blog/sidebar/sr-3.jpg" alt="">
									</div>
									<div class="blog__sidebar__recent__item__text">
										<h6>
											4 Principles Help You Lose <br />Weight With Vegetables
										</h6>
										<span>MAR 05, 2019</span>
									</div>
								</a>
							</div>
						</div>
						<div class="blog__sidebar__item">
							<h4>Search By</h4>
							<div class="blog__sidebar__item__tags">
								<a href="#">Apple</a> <a href="#">Beauty</a> <a href="#">Vegetables</a>
								<a href="#">Fruit</a> <a href="#">Healthy Food</a> <a href="#">Lifestyle</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="row recipelist">
						
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00017_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Egg Manchunian</a>
									</h3>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00016_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Pure Vegetable Bowl</a>
									</h3>
									<span>Appetizer</span>
									<p>Time Needs: 30 Mins</p>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00009_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Egg Masala Ramen</a>
									</h3>
									<span>Appetizer</span>
									<p>Time Needs: 30 Mins</p>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00010_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Soup</a>
									</h3>
									<span>Appetizer</span>
									<p>Time Needs: 30 Mins</p>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00011_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Egg Masala Ramen</a>
									</h3>
									<span>Appetizer</span>
									<p>Time Needs: 30 Mins</p>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6 col-md-6 col-sm-6">
							<div class="blog__item">
								<div class="recipe__item__pic">
									<img src="http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00012_1.png" alt="">
								</div>
								<div class="blog__item__text">
									<ul>
										<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
										<li><i class="fa fa-comment-o"></i> 5</li>
									</ul>
									<h3>
										<a href="#">Yogure</a>
									</h3>
									<span>Appetizer</span>
									<p>Time Needs: 10 Mins</p>
									<a href="#" class="line_btn">View Full Recipe<span
										class="arrow_right"></span></a>
								</div>
							</div>
						</div>
						
						<div class="col-lg-12">
							<div class="product__pagination blog__pagination">
								<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a
									href="#"><i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<div id="map" style="width:100%;height:350px;"></div>
	
	
	<!-- Recipe Section End -->

 		
    <!-- Footer Section Begin -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="../common/jslink.jsp"></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	var _IS_SEARCH_RESTRICT = false;
	$(document).ready(function() {
		ToggleCategory();
		
	});

	function goSearchRecipe(ca, val) {
		if (val == 'reco' && _IS_SEARCH_RESTRICT) {
			viewPremiumSearchModal();
		} else {
			$("#srRecipeFrm [name='" + ca + "']").val(val);
			$("[name='lastcate']").val(ca);
			$("#srRecipeFrm").submit();
		}
	}

	function doSetSearch(filters, val) {
		if (!filters || !val)
			return;
		$("[id^=li_" + filters + "_]").removeClass("active");
		// cancel
		if ($("#dsf_" + filters).val() == val) {
			$("#dsf_" + filters).val('');
		} else {
			$("#li_" + filters + "_" + val).addClass("active");
			$("#dsf_" + filters).val(val);
		}
	}

	function doDetailSearch() {
		$("[name=dsearch]").val("y");
		if ($("#ni_resource").val())
			$("[name=niresource]").val($("#ni_resource").val());
		$("#srRecipeFrm").submit();
	}

	function ToggleCategory() {
		$('#id_search_category').toggle();
		if ($('#id_search_category').is(":visible")) {
			$('#id_search_category_text').text('카테고리 닫기');
			$('#id_search_category_img').attr("src", 'img/recipe/arrow_up.png');
		} else {
			$('#id_search_category_text').text('카테고리 열기');
			$('#id_search_category_img').attr("src", 'img/recipe/arrow_down.png');
		}

	}
	</script>
		<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

	    <div id="menu_wrap" class="bg_white">
	        <div class="option">
	            <div>
	                <form onsubmit="searchPlaces(); return false;">
	                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
	                    <button type="submit">검색하기</button> 
	                </form>
	            </div>
	        </div>
	        <hr>
	        <ul id="placesList"></ul>
	        <div id="pagination"></div>
	    </div>
	</div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a78b66c356cb847f7382c897cf8e2653&libraries=services"></script>
	<script>
	// 마커를 담을 배열입니다
	var markers = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  

	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	// 키워드로 장소를 검색합니다
	searchPlaces();

	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {

	    var keyword = document.getElementById('keyword').value;

	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }

	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);

	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);

	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

	        alert('검색 결과가 존재하지 않습니다.');
	        return;

	    } else if (status === kakao.maps.services.Status.ERROR) {

	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;

	    }
	}

	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {

	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);

	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {

	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);

	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });

	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });

	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };

	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);

	        fragment.appendChild(itemEl);
	    }

	    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;

	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}

	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {

	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';

	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           

	    el.innerHTML = itemStr;
	    el.className = 'item';

	    return el;
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}

	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 

	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }

	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;

	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }

	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}

	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}

	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
<<<<<<< .mine

	</script>
||||||| .r158232
		
		
		
		
		</script>
		
	
=======
		
		
	 
		
		
</script>
		
	
>>>>>>> .r158386
</body>
</html>