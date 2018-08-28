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
<!-- 다음주소검색 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	if ($("#addr").click(function()
	{
		new daum.Postcode(
		{
			oncomplete : function(data)
			{
				$("#").val(data.zonecode);
				$("#").val(data.address);
			}
		}).open();
	}));
</script>
<style type="text/css">
.sidebar {
	height: 100%;
}

.addimage {
	width: 160px;
	height: 200px;
}
</style>
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
					<h3>마이페이지</h3>
					<hr>
					<div class="container">
						<form action="userupadate.do" method="post"
							class="form-horizontal" enctype="multipart/form-data">




							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_id">원아코드</label>
								<div class="col-sm-6">
									<input type="text" class="form-control " id="user_id"
										name="user_id" placeholder="user_id">
									<button type="button" class="btn" id="user_idCheck">조회</button>
									<span id="checkResult"></span>
								</div>
							</div>


							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">원아명</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">원아생년월일</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">원아성별</label>
								&nbsp;&nbsp;&nbsp;&nbsp; <label><input
									class="form-control" type="radio" id="gender" name="gender"
									disabled="disabled">남자</label> &nbsp;&nbsp;&nbsp;&nbsp; <label><input
									class="form-control" type="radio" id="gender" name="gender"
									disabled="disabled">여성</label>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">소속
									어린이집/유치원</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">소속반</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">보호자명</label>
								<div class="col-sm-6">
									<input class="form-control" id="user_name" name="user_name"
										type="text" readonly="readonly">
								</div>
							</div>

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">보호자연락처1</label>
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

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_name">보호자연락처2</label>
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

							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="inputAddr">주소</label>
								<div class="col-sm-6">
									<div class="input-group">
										<input type="text" class="form-control" id="inputAddr"
											name="roadAddress" readonly> <span
											class="input-group-btn">
											<!-- <button class="btn btn-success" type="button" id="addrsearch"
												onclick="openZipSearch();">
												검색<i class="fa fa-edit spaceLeft"></i>
											</button> -->
										</span>

										<!-- 
										<th>* 사업장 주소</th>
			<td>
				<input type="text" id="pzipCode" style="width: 80px;"> - <input type="text" id="pzipCode" style="width: 80px;">
				<button type="submit" class="button">우편검색</button><br>
				<input type="text" id="pAdd1" style="width: 300px;"><br>
				<input type="text" id="pAdd2" style="margin-top: 3px; width: 300px;">
			</td>
										
										 -->


									</div>
									<input type="hidden" id="zipcode" name="zipcode" value="" /> <input
										type="hidden" id="sido" name="sido" value="" /> <input
										type="hidden" id="sigungu" name="sigungu" value="" /> <input
										type="hidden" id="dong" name="dong" value="" />
								</div>
							</div>

							<div id="cma_image"
								style="width: 100%; max-width: 100%; display: none;"></div>
							<div class="form-group form-inline">
								<label class="col-sm-3 control-label" for="user_profile">가족관계증명서</label>
								<div class="filebox col-sm-6">
									<label for="user_profile">업로드</label> <input
										class="form-control" type="file" name="user_profile"
										id="user_profile">
								</div>
								<!-- image src 는 실제 올린 사업자등록증 url 가져다가 뿌려줄 것 -->
								<input type="image" src="images/사업자등록.jpg" class="addimage">
							</div>
							<div class="form-group">
								<div class="col-sm-12 text-center">
									<button class="btn btn-primary" type="submit"
										onclick="return checked();">
										신청하기<i class="fa fa-check spaceLeft"></i>
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
