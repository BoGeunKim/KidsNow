<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();		
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/categories_styles.css">
<link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">
</head>

<body>

	<!-- Header -->

	<header class="header trans_300">

		<!-- Top Navigation -->

		<div class="top_nav">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6">
						<ul>
							<li class="currency">
								<a href="knmain.do">키즈나우</a>
							</li>
						</ul>
					</div>
					
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<li class="currency">
									<a href="#">마이페이지</a>
								</li>
								<li class="language">
									<a href="#">로그아웃</a>
								</li>
								<li class="account">
									<select class="selChild">
										<option>원아를 선택하세요</option>
										<option value="원아코드">박소라 원아</option>
										<option value="원아코드">박초롱 원아</option>									
									</select>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="SchoolMain.do"><img src="images/mansion.png" style="height: 50%; width: 50%; margin-left: -200px; padding-right: 15px;">
							<span>쌍용</span>유치원
							</a>
						</div>
						<nav class="navbar" style="font-size: 30pt;">
							<ul class="navbar_menu">
								<li><a href="SinfoIntro.do">유치원소개</a></li>
								<li><a href="SchoolNotice.do">유치원소식</a></li>
								<li><a href="Event.do">일정</a></li>
								<li><a href="ClassMain.do">학급페이지</a></li>
								<li><a href="ChiefClassLlist.do">원장님메뉴</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>

</body>
</html>