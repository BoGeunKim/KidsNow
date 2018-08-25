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
<title>KnFooter.jsp</title>
<style type="text/css">
.kn_footer {
	background-color: #5bdab9;
}

.kn_footer {
	padding-left: 10%;
}

.logo_img {
	width: 70px;
	height: 50px;
}

ul {
	list-style: none;
}

li {
	display: inline;
}
</style>
</head>
<body>
	<!-- 페이지 footer 영역 -->
	<div class="kn_footer">
		<div class="logo_container">
			<h2>
				<img src="images/school.png" alt="school" class="logo_img">
				KIDS<span style="color: red">NOW</span>
			</h2>
		</div>
		<div class="address">
			<p>
				주소 : (21320) 경기도 부천시 소사구 송내동 SCV <br /> <strong>전화 :
					1577-0777 / (032)321-8765~4 | 팩스 : (032)321-8766 | 이메일 :
					kidsnow@kidsnow.kr</strong><br /> Copyright &copy; 2018 by kidsnow.kr. All
				right Reserved.
			</p>
		</div>
		<div class="ft_content">
			<ul class="menu">
				<li><a href="">이용안내</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
				<li><a href="">개인정보취급방침</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
				<li><a href="">사이트맵</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
				<li><a href="">오시는 길</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
