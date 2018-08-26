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

<script type="text/javascript">
	
	function idCheck(id){
		
		if (!id) 
		{
			alert("아이디를 입력하지 않았습니다.");
			return false;
		} 
		else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z") )
		{ 
			alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
			return false;
		}
		else
		{
			ajax = createAjax();
			var param="userId="+id;
			ajax.open("POST", "checkid.do", true);
			ajax.onreadystatechange = function()
			{
				if (ajax.readyState == 4)
				{
					if ( ajax.status == 200 )
						callback();
				}
			}
			ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
			ajax.send(param);
		}
	}
	
	function callback(){
		// 결과값을 가져온다.
		var resultText = ajax.responseText;
		if(resultText == 1){
			document.getElementById("checkResult").innerHTML ="사용할수없는 아이디입니다.";
		} 
		else if(resultText == 0){ 
			document.getElementById("checkResult").innerHTML = "사용 가능한 아이디입니다.";
		}
	}
	
	function schoolIdentificationCheck(schoolIdentification){
		ajax = createAjax();
		var param="schoolIdentification="+schoolIdentification;
		ajax.open("POST", "schoolIdentificationCheck.do", true);
		ajax.onreadystatechange = function()
		{
			if (ajax.readyState == 4)
			{
				if ( ajax.status == 200 )
					callback2();
			}
		}
		ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
		ajax.send(param);
	}
	
	function callback2(){
		// 결과값을 가져온다.
		var resultText = ajax.responseText;
		if(resultText == 1){
			document.getElementById("checkResult").innerHTML ="사용할수없는 아이디입니다.";
		} 
		else if(resultText == 0){ 
			document.getElementById("checkResult").innerHTML = "사용 가능한 아이디입니다.";
		}
	}

	$(document).ready(function()
	{
		// 아이디 중복확인버튼 눌렸을 경우
		$('#userIdCheck').click(function()
		{
			//아이디 불러옴.
			var id = $('#userId').val();
			idCheck(id);
			return false;

		});
		
		$('#identificationCheck').click(function()
		{
			var schoolIdentification = $('#identification').val();
			schoolIdentificationCheck(schoolIdentification);
			return false;
		});
		
	});
</script>




</head>
<body>
	<div id="top" class="page-header">
		회원가입 <small>Sign Up</small>
	</div>
	<div class="container">
		<div class="col-md-12">
			<form action="userInsert.do"  method="post" class="form-horizontal" enctype="multipart/form-data"  >
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="identification">소속어린이집/유치원</label>
					<div class="col-sm-6">
						<input type="text" class="form-control " id="identification" name="identification" >
						<button type="button" class="btn" id="identificationCheck">조회</button>
						<span id="checkResult"></span>
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userId">아이디</label>
					<div class="col-sm-6">
						<input type="text" class="form-control " id="userId" name="userId"
							placeholder="영문/숫자 조합 4~15자리">
						<button type="button" class="btn" id="userIdCheck">중복확인</button>
						<span id="checkResult"></span>
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userPw">비밀번호</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호">
						<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
					</div>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userPwCheck">비밀번호확인</label>
					<div class="col-sm-6">
						<input class="form-control" id="userPwCheck" name="userPwCheck" type="password" placeholder="비밀번호 확인">
						<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
					</div>
				</div>
				
				
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userName">이름</label>
					<div class="col-sm-6">
						<input class="form-control" id="userName" name="userName" type="text">
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userName">생년월일</label>
					<div class="col-sm-6">
						<input class="form-control" id="userName" name="userName" type="text">
					</div>
				</div>
				
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userName">휴대폰번호</label>
					<div class="col-sm-6">
						<select class="form-control col-sm-3">
							<option>010</option>
							<option>011</option>
							<option>016</option>
						</select>
						-
						<input class="form-control col-sm-2" id="userName" name="userName" type="text">
						-
						<input class="form-control col-sm-2" id="userName" name="userName" type="text">
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label" for="userName">사업자등록번호</label>
					<div class="col-sm-6">
						<input class="form-control col-sm-2" id="userName" name="userName" type="text">
						-
						<input class="form-control col-sm-2" id="userName" name="userName" type="text">
						-
						<input class="form-control col-sm-2" id="userName" name="userName" type="text">
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
					<label class="col-sm-3 control-label" for="businessLicense">사업자등록증</label>
				    <div class="filebox col-sm-6">
				        <label for="businessLicense">업로드</label>
				        <input class="form-control" type="file" name="businessLicense" id="businessLicense" >
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