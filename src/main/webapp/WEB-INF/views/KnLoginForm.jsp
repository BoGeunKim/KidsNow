<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>KnLoginForm.jsp</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>

<style type="text/css">
html,body {
    margin:0;
    padding:0;
    height:100%;
}

.super_container {
	position:relative;
    min-height:100%;
}

.container {
	text-align: center;
    padding:20px;
}

.kn_footer {
    position:absolute;
    bottom:0;
    width:100%;
}

.btn {
	background: #00AEEF;
	color: #fff
}
.sel_btn
{
	padding:5px;	
}
</style>

</head>
<body>
<div class="super_container">
	<div class="container">
		<div class="login_form">
			<div class="">
				<h1>로그인</h1>
			</div>
			<br><br>
			<div>
				<div class="">
					<button type="button" class="btn sel_btn">학부모님</button>
					<button type="button" class="btn sel_btn">원장님</button>
					<button type="button" class="btn sel_btn">선생님</button>
				</div>
				<br>
				<div class="login_table">
					<input type="text" placeholder="아이디" class="form-control col-sm-3"><br>
					<input type="text" placeholder="비밀번호" class="form-control col-sm-3"><br>
					<button type="button" class="btn">로그인</button>
				</div>
				<br>
				<div>
					<h6>
						<a href="<!-- 로그인으로 -->"> 회원가입</a> &nbsp; | &nbsp; <a
							href="<!-- 회원가입으로 -->">아이디/비밀번호 찾기</a>
					</h6>
				</div>
			</div>
		</div>
	</div>
	<c:import url="KnFooter.jsp"></c:import>
</div>
</body>

</html>
