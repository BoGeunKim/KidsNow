
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
</head>
<body>
<!-- Sidebar -->
	<ul class="sidebar navbar-nav">
		<li class="nav-item active"><a class="nav-link"
			href="adminMain.do"> <i class="glyphicon glyphicon-home"></i> <span>전체현황</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="glyphicon glyphicon-education"></i> <span>유치원정보</span>
		</a></li>
		<li class="nav-item">
			<a class="nav-link" href="tables.html">
				<i class="glyphicon glyphicon-th-list"></i> <span>신청목록</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="tables.html">
				<i class="glyphicon glyphicon-ok"></i> <span>수락목록</span>
			</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="tables.html">
				<i class="glyphicon glyphicon-remove"></i> <span>거절목록</span>
			</a>
		</li>
	</ul>
</body>
</html>