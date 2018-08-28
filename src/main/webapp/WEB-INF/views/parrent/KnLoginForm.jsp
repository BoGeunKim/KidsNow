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
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
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
  position:absolute;
  top:30%;
  left:40%;
  background:skyblue;
  width:500px;
  height:500px;
  transform:translate(-50%, -50%)

  margin-top:-150px; 
  margin-left:-100px;
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
	width: 164px;
	align-content: center;
}



</style>

</head>
<body>
<div class="super_container">
	
				<h1 style="text-align: center">로그인</h1>
			
			<br><br>
		
					<button type="button" class="btn sel_btn">학부모님</button>
					<button type="button" class="btn sel_btn">원장님</button>
					<button type="button" class="btn sel_btn">선생님</button>
			
				<br><br><br>
			
					<input type="text" placeholder="아이디" class="form-control col-sm-3"><br><br><br>
					<input type="text" placeholder="비밀번호" class="form-control col-sm-3"><br><br><br>
					<button type="button" class="btn" data-toggle="modal" data-target="#myModal">로그인</button>
			
				<br>
		
					<h6>
						<a href="<!-- 로그인으로 -->"> 회원가입</a> &nbsp; | &nbsp; <a
							href="<!-- 회원가입으로 -->">아이디/비밀번호 찾기</a>
					</h6>
			
</div>
	
	
	
	<!-- 기본 모달 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel" >나의 자녀 조회 </h4>
	      </div>
	      <div class="modal-body">
		
			<table style="margin: auto; text-align: center;">
				<tr>
					<th>원아코드</th>
					<th>원아명</th>
					<th>어린이집/유치원</th>
					<th>유치원주소</th>
					<th>연락처</th>
					<th>상태</th>
					<th>들어가기</th>
				</tr>
				
				<tr>
					<td>5323</td>
					<td>이진효</td>
					<td>송내어린이집</td>
					<td> 경기도 부천시 소사구 송내동 702-1</td>
					<td>032-548-2532</td>
					<td>승인</td>
					<td><a href="<%=cp %>/move_page.do"><button type="button">들어가기</button></a></td>
				</tr>
				
			
			
			</table>
		
		 
		
	      </div>
	      <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<c:import url="../KnFooter.jsp"></c:import>







<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->

</body>

</html>
