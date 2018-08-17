<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
    <title>Home</title>
</head>

<body>
<h1>Board List</h1>

<table border="1">
<thead>
  <tr>
    <th>번호</th>
    <th>현재시간</th>
  </tr>
</thead>
<tbody>
<c:forEach var="item" items="${list}">
  <tr>
    <td>${item.num}</td>
    <td>${item.todayTime}</td>
  </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>