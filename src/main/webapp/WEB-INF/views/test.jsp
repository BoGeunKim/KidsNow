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
		<c:forEach var="item" items="${list }">
		<tr>
			<td> ${item.num }</td>
			<td> ${item.today }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>