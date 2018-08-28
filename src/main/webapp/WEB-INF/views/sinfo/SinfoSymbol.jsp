<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();		
%>
<!DOCTYPE html>
<html>
<head>
<title>SinfoSymbol.jsp</title>
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

<body>

<div class="super_container">

	<!-- Header -->
	<c:import url="../SchoolUp.jsp"></c:import>

	<div class="container product_section_container">
		<div class="row">
			<div class="col product_section clearfix">

				<!-- 현 위치 -->
				<div class="breadcrumbs d-flex flex-row align-items-center">
					<ul>
						<li><a href="SinfoIntro.do">유치원 소개</a></li>
						<li class="active"><a href="SinfoSymbol.do"><i class="fa fa-angle-right" aria-hidden="true"></i>원훈 및 상징</a></li>
					</ul>
				</div>

				<!-- Sidebar -->
				<div class="sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>유치원 소개</h5>
						</div>
						<ul class="sidebar_categories">
							<li><a href="SinfoIntro.do">원장님 인사말</a></li>
							<li><a href="SinfoHistory.do">연혁</a></li>
							<li class="active"><a href="SinfoSymbol.do"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>원훈 및 상징</a></li>
							<li><a href="SinfoSong.do">원가</a></li>
							<li><a href="SinfoCondition.do">유치원 현황</a></li>
							<li><a href="SinfoLoc.do">찾아오시는 길</a></li>
							<li><a href="SinfoList.do">목록 수정</a></li>
						</ul>
					</div>
					
				</div>

				<!-- Main Content -->

				<div class="main_content">

					<!-- 이미지 -->

					<div class="products_iso">
						<div class="row">
							<div class="col">
								<img alt="" src="images/sinfo_symbol.png">
							</div>
						</div>
					</div>
				</div>
				
		</div>
	</div>
</div>
		
	<!-- Footer -->
	<c:import url="../KnFooter.jsp"></c:import>
	 
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="js/categories_custom.js"></script>
</body>

</html>
