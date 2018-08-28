<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>KnMain.jsp</title>

<link rel="stylesheet" href="styles/animate.css">
<link rel="stylesheet" href="styles/owl.carousel.css">
<link rel="stylesheet" href="styles/owl.theme.css">
<link rel="stylesheet" href="styles/owl.transitions.css">
<link rel="stylesheet" href="styles/style.css">
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<style type="text/css">
.kn-footer {
	background-color: #5bdab9;
}

.container {
	padding-left: 10%;
}

.logo_img {
	width: 80px;
	height: 40px;
}
</style>
</head>
<body>
	<!-- Top content -->
	<div class="slider-area">
		<div class="slider">
			<div id="bg-slider" class="owl-carousel owl-theme">
				<div class="item">
					<img src="images/slider-image-3.jpg" alt="child1">
				</div>
				<div class="item">
					<img src="images/slider-image-2.jpg" alt="child2">
				</div>
				<div class="item">
					<img src="images/slider-image-1.jpg" alt="child3">
				</div>

			</div>
		</div>
		<div class="container slider-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<h2>
						KIDS<span style="color: red">NOW</span>
					</h2>
					<p>키즈나우를 이용중인 전국 어린이집, 유치원을 한 눈에 확인하세요 !</p>
					<div class="">
						<form action="" class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="유치원명 입력">
								<input type="submit" class="btn" value="Search">
							</div>
							<div class="form-group">
								<select name="" id="" class="form-control">
									<option>특별시·도</option>
									<option>서울특별시</option>
									<option>인천광역시</option>
									<option>부산광역시</option>
									<option>제주특별자치도</option>
								</select> <select name="" id="" class="form-control">
									<option>시·군·구</option>
									<option>구리시</option>
									<option>시흥시</option>
									<option>일산시</option>
								</select> <input type="submit" class="btn" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 메인페이지 body 영역 -->
	<div class="container">
		<div class="">
			<h1>유치원 조회·검색</h1>
			<h5>kidsnow partners list</h5>
			<h2>
				<span>count</span> 개의 유치원·어린이집이 함께합니다.
			</h2>
		</div>
		<!-- 검색조건 설정 -->
		<div>
			<span>특별시·도</span> <select>
				<option>특별시·도 선택</option>
				<option>특별시1</option>
				<option>특별시2</option>
				<option>특별시3</option>
				<option>특별시4</option>
			</select> <span>시·군·구</span> <select>
				<option>시·군·구 선택</option>
				<option>시1</option>
				<option>시2</option>
				<option>구1</option>
				<option>구2</option>
			</select> <span>설립유형</span> <select>
				<option>설립유형 선택</option>
				<option>유형1</option>
				<option>유형2</option>
				<option>유형3</option>
				<option>유형4</option>
			</select> <span>유치원명</span> <input type="text" placeholder="내용을 입력해주세요">
			<input type="button" value="검색">
		</div>
		<div class="row jobs">
			<div class="col-md-9">
				<table class="table table-striped">
					<tr>
						<th>어린이집/유치원명</th>
						<th>설립유형</th>
						<th>주소</th>
						<th>유치원정보</th>
						<th>유치원페이지</th>
					</tr>
					<tr>
						<td>소망유치원</td>
						<td>사설</td>
						<td>인천시 미추홀구 경원대로 717</td>
						<td><button class="btn">보기</button></td>
						<td><button class="btn">이동</button></td>
					</tr>
					<tr>
						<td>소망유치원</td>
						<td>사설</td>
						<td>인천시 미추홀구 경원대로 717</td>
						<td><button class="btn">보기</button></td>
						<td><button class="btn">이동</button></td>
					</tr>
					<tr>
						<td>소망유치원</td>
						<td>사설</td>
						<td>인천시 미추홀구 경원대로 717</td>
						<td><button class="btn">보기</button></td>
						<td><button class="btn">이동</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<hr>
	<!-- footer -->
	<c:import url="KnFooter.jsp"></c:import>

</body>
</html>
