<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h2>기본 테스트</h2>
	<hr>
	<table>
		<tr>
			<th> 번호</th>
			<th> 날짜</th>
		</tr>
		<tr>
			<td> ${hh}</td>
			<td> ${hh}</td>
		</tr>
	</table>
</body>
</html>