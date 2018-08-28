<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();		
%>
<!DOCTYPE html>
<html>
<head>
<title>TNoticeContent.jsp</title>
<meta charset="UTF-8">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<style type="text/css">
	table .form-control
	{
		color: black;
	}
	th
	{
		background-color: #F2F2F2;
	}
</style>
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
						<li><a href="SchoolNotice.do">유치원 소식</a></li>
						<li class="active"><a href="TNoticeContent.do"><i class="fa fa-angle-right" aria-hidden="true"></i>선생님 공지사항 본문</a></li>
					</ul>
				</div>

				<!-- Sidebar -->

				<div class="sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>유치원 소식</h5>
						</div>
						<ul class="sidebar_categories">
							<li><a href="SchoolNotice.do">공지사항</a></li>
							<li class="active"><a href="TNotice.do"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>선생님 공지사항</a></li>
							<li><a href="DietList.do">식단</a></li>
						</ul>
					</div>
				</div>

				<!-- Main Content -->

				<div class="main_content">
					
					<table class="table table-bordered">
                       <tr>
                          <th>제목</th>
                          <td>6월 유치원 소방 점검 사전 대비 안내</td>
                       </tr>
                        <tr>
                          <th>내용</th>
                          <td style="height: 200px;">6월 15일부터 17일까지 진행될 예정입니다. <br>각 반 선생님들께서는 문제되지 않도록 각별히 신경쓰셔야 합니다.</td>
                       </tr>
                        <tr>	
                          <th>첨부파일</th>
                          <td><input type="file" class="form-control"></td>
                       </tr>
                    </table>
                      
                    <div style="margin-left: 69%;">
						<button class="btn btn-info btn-xs">뒤로가기&nbsp;<i class="fa fa-undo"></i></button>
						<button class="btn btn-primary btn-xs" onclick="location.href='TNoticeUpdate.do'">수정&nbsp;<i class="fa fa-pencil"></i></button>
						<button class="btn btn-danger btn-xs">삭제&nbsp;<i class="fa fa-trash"></i></button>
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
