<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>KnInfo.jsp</title>
<meta charset="UTF-8">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">

</head>

<body>

	<div class="super_container">
		<!-- Header -->
		<c:import url="s_up.jsp"></c:import>

		<br><br>
		<div class="container product_section_container">
			<div class="row">
				<div class="col product_section clearfix">

					<!-- 현 위치 -->
					<!-- <div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="sinfo_intro.do">유치원 소개</a></li>
							<li class="active"><a href="sinfo_list.do"><i
									class="fa fa-angle-right" aria-hidden="true"></i>목록 수정</a></li>
						</ul>
					</div> -->

					<!-- Sidebar -->

					<div class="sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">
								<h5>
									KIDS<span style="color: red">NOW</span>
								</h5>
							</div>
							<ul class="sidebar_categories">
								<li><a href="kninfo.do">정보수정</a></li>
								<li><a href="knreqlist.do">신청내역</a></li>
								<li><a href="kndrop.do">회원탈퇴</a></li>
							</ul>
						</div>

					</div>
					<!-- Main Content -->
					<div class="main_content">
					<h3>마이페이지</h3>
					<hr>
					<div>
						<span>※ 개인정보 수정을 위한 비밀번호 확인</span>
						<br><br>
						<input type="text" name="user_pw" placeholder="비밀번호 입력">
						<br><br>
						<button class="btn btn-default" type="button" onclick="location.href='kninfoform.do'">수정하기</button>
					</div>
					
					</div>

				</div>
			</div>
		</div>
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
