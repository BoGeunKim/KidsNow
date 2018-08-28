<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();		
%>
<!DOCTYPE html>
<html>
<head>
<title>SchoolMain.jsp</title>
<meta charset="UTF-8">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
</head>

<style type="text/css">
/* 	.selChild
	{
		background-color: #1e1e27;
		border-color : #1e1e27;
		color: #b5aec4;
	}
 */
</style>
</head>

<body>

<div class="super_container">

	<!-- Header -->
	<c:import url="SchoolUp.jsp"></c:import>

	<!-- 메인 이미지 -->
	<div class="main_slider" style="background-image:url(images/sampleimg.jpg)">
		<div class="container fill_height">
			<div class="row align-items-center fill_height">
				<div class="col">
					<div class="main_slider_content">
						<!-- <h6>Spring / Summer Collection 2017</h6>
						<h1>Get up to 30% Off New Arrivals</h1>
						<div class="red_button shop_now_button"><a href="#">shop now</a></div> -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Blogs -->

	<div class="blogs">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h3>유치원 소개</h3>
					</div>
				</div>
			</div>
					
						
			<div class="row blogs_container">
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<!--  style="background-image:url(images/chiefteacher.png)"> -->
						<div class="blog_background"><img src="images/chiefteacher.png"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">원장님 인사말</h4>
							<!-- <span class="blog_meta">by admin | dec 01, 2017</span> -->
							<a class="blog_more" href="#">쌍용유치원에 온 것을 환영합니다.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background"><img src="images/checklisticon.png"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">유치원 현황</h4>
							<!-- <span class="blog_meta">by admin | dec 01, 2017</span> -->
							<a class="blog_more" href="#">현재 현황을 확인해 보세요.</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 blog_item_col">
					<div class="blog_item">
						<div class="blog_background"><img src="images/placeholdericon.png"></div>
						<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
							<h4 class="blog_title">오시는 길</h4>
							<!-- <span class="blog_meta">by admin | dec 01, 2017</span> -->
							<a class="blog_more" href="#">찾아오시는 길을 확인해 보세요.</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<br><br><br>
	
	
	
	<!-- 알려드립니다 -->
	<div class="blogs">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h3>알려드립니다</h3>
					</div>
				</div>
			</div>
			<div class="row blogs_container">	
				<div class="col-lg-4 product-item men">
					<a href="#"><p>공지사항</p></a>
					<ul class="ul noticeCon">
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">코앤코뮤직 9월 계획안</a></li>
								<li class="product_name">2018-08-24</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">만4세 독서 골든벨 동화</a></li>
								<li class="product_name">2018-08-17</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">9월 사랑나눔, 토요 가족체험의날 안..</a></li>
								<li class="product_name">2018-08-07</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col-lg-4 product-item men">
					<a href="#"><p>행사일정</p></a>
					<ul class="ul boardCon">
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">9월 20일(목) - 세종 가족 민속놀이 ..</a></li>
								<li class="product_name">2018-08-21</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">9월 14일(금) - 은솔반 외암리민속마..</a></li>
								<li class="product_name">2018-08-21</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">9월 13일(목) - 예솔반 장영실과학관 ..</a></li>
								<li class="product_name">2018-08-21</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col-lg-4 product-item men">
					<a href="#"><p>식단확인</p></a>
					<ul class="ul boardCon">
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">8월 4주 식단표</a></li>
								<li class="product_name">2018-08-23</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">8월 3주 식단표</a></li>
								<li class="product_name">2018-08-16</li>
							</ul>
						</li>
						<li style="padding-bottom:28px;">
							<ul class="ul">
								<li class="product_price"><a href="#">8월 2주 식단표</a></li>
								<li class="product_name">2018-08-09</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
		
	<!-- Footer -->
	<c:import url="KnFooter.jsp"></c:import>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>

</html>
