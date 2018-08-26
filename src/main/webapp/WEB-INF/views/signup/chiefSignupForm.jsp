<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/signup.css">
<link rel="stylesheet" type="text/css" href="css/Main.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" title="no title">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="css/bootstrap.min.js"></script>

</head>
<body>
	<div id="top" class="page-header">
		회원가입 <small>Sign Up</small>
	</div>
	<div class="container">
		<div class="col-md-12">
			<form action="userInsert.do"  method="post" class="form-horizontal" enctype="multipart/form-data"  >
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_id">소속어린이집/유치원</label>
					<div class="col-sm-6">
						<input type="text" class="form-control " id="user_id" name="user_id"
							placeholder="원아식별코드">
						<button type="button" class="btn" id="user_idCheck">조회</button>
						<span id="checkResult"></span>
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_id">아이디</label>
					<div class="col-sm-6">
						<input type="text" class="form-control " id="user_id" name="user_id"
							placeholder="영문/숫자 조합 4~15자리">
						<button type="button" class="btn" id="user_idCheck">중복확인</button>
						<span id="checkResult"></span>
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_pw">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호">
						<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
					</div>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_pwCheck">비밀번호확인</label>
					<div class="col-sm-6">
						<input class="form-control" id="user_pwCheck" name="user_pwCheck" type="password" placeholder="비밀번호 확인">
						<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>
				
				
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_name">이름</label>
					<div class="col-sm-6">
						<input class="form-control" id="user_name" name="user_name" type="text">
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_name">생년월일</label>
					<div class="col-sm-6">
						<input class="form-control" id="user_name" name="user_name" type="text">
					</div>
				</div>
				
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_name">휴대폰번호</label>
					<div class="col-sm-6">
						<select class="form-control col-sm-3">
							<option>010</option>
							<option>011</option>
							<option>016</option>
						</select>
						-
						<input class="form-control col-sm-2" id="user_name" name="user_name" type="text">
						-
						<input class="form-control col-sm-2" id="user_name" name="user_name" type="text">
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_name">사업자등록번호</label>
					<div class="col-sm-6">
						<input class="form-control col-sm-2" id="user_name" name="user_name" type="text">
						-
						<input class="form-control col-sm-2" id="user_name" name="user_name" type="text">
						-
						<input class="form-control col-sm-2" id="user_name" name="user_name" type="text">
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="inputAddr">주소</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="text" class="form-control" id="inputAddr" name="roadAddress" readonly> 
							<span class="input-group-btn">
								<button class="btn btn-success" type="button" id="addrsearch" onclick="openZipSearch();">
									검색<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
						<input type="hidden" id="zipcode" name="zipcode" value=""/>
						<input type="hidden" id="sido" name="sido" value=""/>
						<input type="hidden" id="sigungu" name="sigungu" value=""/>
						<input type="hidden" id="dong" name="dong" value=""/>
					</div>
				</div>
				
				<div id="cma_image" style="width:100%;max-width:100%; display:none;"></div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="user_profile">사업자등록증</label>
				    <div class="filebox col-sm-6">
				        <label for="user_profile">업로드</label>
				        <input class="form-control" type="file" name="user_profile" id="user_profile" >
				    </div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit" onclick="return checked();">
							회원가입<i class="fa fa-check spaceLeft"></i>
						</button>
						<button class="btn btn-danger" type="reset">
							가입취소<i class="fa fa-times spaceLeft"></i>
						</button>
					</div>
				</div>
			</form>
			<hr>
		</div>
	</div>
	
</body>
</html>