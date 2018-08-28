<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>KnReqList.jsp</title>
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

<style type="text/css">
.sidebar {
	height: 100%;
}

.smallImg {
	width: 80px;
	height: 100px;
}
</style>
<script type="text/javascript">
	function OnloadImg(url)
	{
		var img = new Image();
		img.src = url;
		var img_width = img.width;
		var win_width = img.width + 25;
		var height = img.height + 30;
		var OpenWindow = window.open('', '_blank', 'width=' + img_width
				+ ', height=' + height + ', menubars=no, scrollbars=auto');
		OpenWindow.document
				.write("<style>body{margin:0px;}</style><img src='"+url+"' width='"+win_width+"'>");

	}
</script>
</head>
<body>
	<div class="super_container">
		<!-- Header -->
		<c:import url="../s_up.jsp"></c:import>

		<br> <br>
		<div class="container product_section_container">
			<div class="row">
				<div class="col product_section clearfix">

					<!-- 현 위치 -->
					<div class="breadcrumbs d-flex flex-row align-items-center">
						<ul>
							<li><a href="sinfo_intro.do">마이페이지</a></li>
							<li class="active"><a href="sinfo_list.do"><i
									class="fa fa-angle-right" aria-hidden="true"></i>신청내역</a></li>
						</ul>
					</div>

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
					<h3>마이페이지</h3>
					<br> <br>
					<div class="container">
						<div class="form-group form-inline">
							<table class="table table-striped">
								<tr>
									<th>번호</th>
									<th>소속 어린이집/유치원</th>
									<th>사업자등록증</th>
									<th>신청일</th>
									<th>신청현황</th>
									<th>확인일</th>
									<th>비고</th>
								</tr>
								<tr>
									<td>1</td>
									<td>소망유치원</td>
									<td><input type="image" src="images/사업자등록.jpg"
										onclick="OnloadImg(this.src)" class="smallImg"></td>
									<td>2018-08-15</td>
									<td>신청대기</td>
									<td>2018-08-22</td>
									<td>거절인 경우 거절사유 등록</td>
								</tr>
								<tr>
									<td>1</td>
									<td>소망유치원</td>
									<td><input type="image" src="images/사업자등록.jpg"
										onclick="OnloadImg(this.src)" class="smallImg"></td>
									<td>2018-08-15</td>
									<td>신청대기</td>
									<td>2018-08-22</td>
									<td>거절인 경우 거절사유 등록</td>
								</tr>
								<tr>
									<td>1</td>
									<td>소망유치원</td>
									<td><input type="image" src="images/사업자등록.jpg"
										onclick="OnloadImg(this.src)" class="smallImg"></td>
									<td>2018-08-15</td>
									<td>신청대기</td>
									<td>2018-08-22</td>
									<td>거절인 경우 거절사유 등록</td>
								</tr>
							</table>
							<br>
							<button class="btn">추가신청</button>
						</div>
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<c:import url="../KnFooter.jsp"></c:import>

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
