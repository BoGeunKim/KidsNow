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
<style type="text/css">

.center 
{ 
  position:absolute;
  top:50%;
  left:50%; 
  width:300px; 
  height:200px; 
  overflow:hidden; 
  background-color:#FC0; 
  margin-top:-150px; 
  margin-left:-100px;
}

</style>
</head>
<body>




<div align="center" class="center">

<h1>그림 삽입...</h1>

회원가입 신청이 완료되었습니다. 
원장님 승인 이후 사이트를 이용해주세요.

<br><br>

<a href="<%=cp %>/Ploginform.do"><button type="button" >로그인</button></a>  
<a href="<%=cp %>/knmain.do"><button type="button"> 홈으로 이동</button></a> 
</div>

</body>
</html>