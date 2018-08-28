<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>KnRequestForm.jsp</title>
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
<link rel="stylesheet" type="text/css" href="css/signup.css">
<link rel="stylesheet" type="text/css" href="css/Main.css">

<style type="text/css">
.sidebar {
	height: 100%;
}
</style>
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
								<h5>KIDS<span style="color: red">NOW</span></h5>
							</div>
							<ul class="sidebar_categories">
								<li><a href="kninfo.do">정보수정</a></li>
								<li><a href="knreqlist.do">신청내역</a></li>
								<li><a href="kndrop.do">회원탈퇴</a></li>
							</ul>
						</div>
					</div>
					<!-- Main Content -->
					<h3>마이페이지</h3>
					<hr>
					<div class="container">
						<form action="userupadate.do" method="post"
							class="form-horizontal" enctype="multipart/form-data">

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_id">아이디</label>
								<div class="col-sm-6">
									<input type="text" class="form-control " id="user_id"
										name="user_id" placeholder="user_id" readonly="readonly">
									<button type="button" class="btn" id="user_idCheck">중복확인</button>
									<span id="checkResult"></span>
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_pw">비밀번호</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" id="user_pw"
										name="user_pw" placeholder="비밀번호">
									<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
								</div>
							</div>
							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_pwCheck">비밀번호확인</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_pwCheck"
										name="user_pwCheck" type="password" placeholder="비밀번호 확인">
									<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
								</div>
							</div>


							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">이름</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">생년월일</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>


							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">휴대폰번호</label>
								<div class="col-sm-6">
									<select class="form-control col-sm-3">
										<option>010</option>
										<option>011</option>
										<option>016</option>
									</select> - <input class="form-control col-sm-2" id="user_name"
										name="user_name" type="text"> - <input
										class="form-control col-sm-2" id="user_name" name="user_name"
										type="text">
								</div>
							</div>

							
							<div id="cma_image"
								style="width: 100%; max-width: 100%; display: none;"></div>
							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_profile">가족관계증명서</label>
									<input
										class="form-control" type="file" name="user_profile"
										id="user_profile" value="업로드">
							</div>
							
							<div class="form-group">
								<div class="col-sm-12 text-center">
									<button class="btn btn-primary" type="submit"
										onclick="return checked();">
										정보수정<i class="fa fa-check spaceLeft"></i>
									</button>
									<button class="btn btn-danger" type="reset">
										취소<i class="fa fa-times spaceLeft"></i>
									</button>
								</div>
							</div>
						</form>
						<hr>
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
