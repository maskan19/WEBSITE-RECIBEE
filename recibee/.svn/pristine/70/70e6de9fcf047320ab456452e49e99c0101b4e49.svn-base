<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<style type="text/css">
.hero__search__form form .hero__search__categories > span :not(.dropdown) {
  position: absolute;
  right: 14px;
  top: 14px;
}
.dropdown {
  --max-scroll: 8;
  --text: #CDD9ED;
  --border: #CDD9ED;
  --borderActive: #23C4F8;
  --background: #fff;
  --arrow: #99A3BA;
  --arrowActive: #6C7486;
  --listText: #99A3BA;
  --listBackground: #fff;
  --listActive: #F5F9FF;
  --listTextActive: #6C7486;
  --listBorder: #E4ECFA;
  --textFilled: #6C7486;
  /* width: 220px; */
  position: relative;
}

.dropdown select {
  display: none;
}
span{
clear: inherit;
}
.dropdown > span {
  cursor: pointer;
  padding: 9px 16px;
  border-radius: 6px;
  display: block;
  position: relative;
  color: var(--text);
  /* border: 1px solid var(--border); */
  background: var(--background);
  transition: all 0.3s ease;
  right: 0px;
  top: -10px;
}
.dropdown > span:before, .dropdown > span:after {
  content: '';
  display: block;
  position: absolute;
  width: 8px;
  height: 2px;
  border-radius: 1px;
  top: 50%;
  right: 15px;
  background: var(--arrow);
  transition: all 0.3s ease;
}
.dropdown > span:before {
  margin-right: 4px;
  transform: scale(0.96, 0.8) rotate(50deg);
}
.dropdown > span:after {
  transform: scale(0.96, 0.8) rotate(-50deg);
}
.dropdown ul {
  margin: 0;
  padding: 0;
  list-style: none;
  opacity: 0;
  visibility: hidden;
  position: absolute;
  max-height: calc(var(--max-scroll) * 42px);
  top: 42px;
  left: 0;
  z-index: 1;
  right: 0;
  background: var(--listBackground);
  border-radius: 6px;
  overflow-x: hidden;
  overflow-y: auto;
  transform-origin: 0 0;
  transition: opacity 0.2s ease, visibility 0.2s ease, transform 0.3s cubic-bezier(0.4, 0.6, 0.5, 1.32);
  transform: scale(0.8) translate(0, 4px);
  border: 1px solid var(--listBorder);
}
.dropdown ul li {
  opacity: 0;
  transform: translate(6px, 0);
  transition: all 0.3s ease;
}
.dropdown ul li a {
  cursor: pointer;
  display: block;
  padding: 10px 16px;
  color: var(--listText);
  text-decoration: none;
  outline: none;
  position: relative;
  transition: all 0.3s ease;
}
.dropdown ul li a:hover {
  color: var(--listTextActive);
}
.dropdown ul li.active a {
  color: var(--listTextActive);
  background: var(--listActive);
}
.dropdown ul li.active a:before, .dropdown ul li.active a:after {
  --scale: 0.6;
  content: '';
  display: block;
  width: 10px;
  height: 2px;
  position: absolute;
  right: 17px;
  top: 50%;
  opacity: 0;
  background: var(--listText);
  transition: all 0.2s ease;
}
.dropdown ul li.active a:before {
  transform: rotate(45deg) scale(var(--scale));
}
.dropdown ul li.active a:after {
  transform: rotate(-45deg) scale(var(--scale));
}
.dropdown ul li.active a:hover:before, .dropdown ul li.active a:hover:after {
  --scale: 0.9;
  opacity: 1;
}
.dropdown ul li:first-child a {
  border-radius: 6px 6px 0 0;
}
.dropdown ul li:last-child a {
  border-radius: 0 0 6px 6px;
}
.dropdown.filled > span {
  color: var(--textFilled);
}
.dropdown.open > span {
  border-color: var(--borderActive);
}
.dropdown.open > span:before, .dropdown.open > span:after {
  background: var(--arrowActive);
}
.dropdown.open > span:before {
  transform: scale(0.96, 0.8) rotate(-50deg);
}
.dropdown.open > span:after {
  transform: scale(0.96, 0.8) rotate(50deg);
}
.dropdown.open ul {
  opacity: 1;
  visibility: visible;
  transform: scale(1) translate(0, 12px);
  transition: opacity 0.3s ease, visibility 0.3s ease, transform 0.3s cubic-bezier(0.4, 0.6, 0.5, 1.32);
}
.dropdown.open ul li {
  opacity: 1;
  transform: translate(0, 0);
}
.dropdown.open ul li:nth-child(1) {
  transition-delay: 80ms;
}
.dropdown.open ul li:nth-child(2) {
  transition-delay: 160ms;
}
.dropdown.open ul li:nth-child(3) {
  transition-delay: 240ms;
}
.dropdown.open ul li:nth-child(4) {
  transition-delay: 320ms;
}
.dropdown.open ul li:nth-child(5) {
  transition-delay: 400ms;
}
.dropdown.open ul li:nth-child(6) {
  transition-delay: 480ms;
}
.dropdown.open ul li:nth-child(7) {
  transition-delay: 560ms;
}
.dropdown.open ul li:nth-child(8) {
  transition-delay: 640ms;
}
.dropdown.open ul li:nth-child(9) {
  transition-delay: 720ms;
}
.dropdown.open ul li:nth-child(10) {
  transition-delay: 800ms;
}
select {
  --text: #3F4656;
  --border: #2F3545;
  --background: #151924;
}
select.dropdown {
  padding: 9px 16px;
  border-radius: 6px;
  color: var(--text);
  border: 1px solid var(--border);
  background: var(--background);
  line-height: 22px;
  font-size: 16px;
  font-family: inherit;
  -webkit-appearance: none;
}
/* html {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}
* {
  box-sizing: inherit;
}
*:before, *:after {
  box-sizing: inherit;
} */




</style>
<title>Insert title here</title>

</head>
<body>
<select class="dropdown" placeholder="All Categories">
    <option>List entry #1</option>
    <option>List entry #2</option>
    <option>List entry #3</option>
    <option>List entry #4</option>
</select>


<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__search">
						<div class="div__top__layer">
							<div class="hero__search__form">
								<form action="#">
									<div class="hero__search__categories dropdown">
							  			<select class="dropdown" placeholder="All Category">
										    <option>List entry #1</option>
										    <option>List entry #2</option>
										    <option>List entry #3</option>
										    <option>List entry #4</option>
										</select>
							  			<!-- <span>All Categories</span> <span class="arrow_carrot-down"></span>
										<ul class="header__menu__dropdown">
											<ins><li>Recipe</li></ins>
											<li>Board1</li>
											<li>Shop</li>
										</ul> -->
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

<!-- <section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__search">
						<div class="div__top__layer">
							<div class="hero__search__form">
								<form action="#">
									<div class="hero__search__categories dropdown">
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
	</section> -->
<label class="switch">
    <input type="checkbox">
    <span>Light</span>
</label>
</body>
 <script src="../js/jquery-3.3.1.min.js"></script>
	
<script type="text/javascript">
$('select.dropdown').each(function() {

    var dropdown = $('<div />').addClass('dropdown selectDropdown');

    $(this).wrap(dropdown);

    var label = $('<span />').text($(this).attr('placeholder')).insertAfter($(this));
    var list = $('<ul />');

    $(this).find('option').each(function() {
        list.append($('<li />').append($('<a />').text($(this).text())));
    });

    list.insertAfter($(this));

    if($(this).find('option:selected').length) {
        label.text($(this).find('option:selected').text());
        list.find('li:contains(' + $(this).find('option:selected').text() + ')').addClass('active');
        $(this).parent().addClass('filled');
    }

});

$(document).on('click touch', '.selectDropdown ul li a', function(e) {
    e.preventDefault();
    var dropdown = $(this).parent().parent().parent();
    var active = $(this).parent().hasClass('active');
    var label = active ? dropdown.find('select').attr('placeholder') : $(this).text();

    dropdown.find('option').prop('selected', false);
    dropdown.find('ul li').removeClass('active');

    dropdown.toggleClass('filled', !active);
    dropdown.children('span').text(label);

    if(!active) {
        dropdown.find('option:contains(' + $(this).text() + ')').prop('selected', true);
        $(this).parent().addClass('active');
    }

    dropdown.removeClass('open');
});

$('.dropdown > span').on('click touch', function(e) {
    var self = $(this).parent();
    self.toggleClass('open');
});

$(document).on('click touch', function(e) {
    var dropdown = $('.dropdown');
    if(dropdown !== e.target && !dropdown.has(e.target).length) {
        dropdown.removeClass('open');
    }
});

// light
$('.switch input').on('change', function(e) {
    $('.dropdown, body').toggleClass('light', $(this).is(':checked'));
});

</script>
</html>