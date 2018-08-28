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
</style>
</head>
<body>

	<!-- 페이지 footer 영역 -->
	
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
						<ul class="footer_nav">
							<li><a href="#">이용안내</a></li>
							<li><a href="#">개인정보취급방침</a></li>
							<li><a href="#">사이트맵</a></li>
							<li><a href="#">오시는 길</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
						<ul>
							<li><h5>KIDS<span style="color: red">NOW</span></h5></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer_nav_container">
						<div class="cr">
							<p>
								주소 : (21320) 경기도 부천시 소사구 송내동 SCV <br /> <strong>전화 :
									1577-0777 / (032)321-8765~4 | 팩스 : (032)321-8766 | 이메일 :
									kidsnow@kidsnow.kr</strong><br /> Copyright &copy; 2018 by kidsnow.kr. All
								right Reserved.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	
	
</body>
</html>
