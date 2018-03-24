<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<a href="index.jsp">홈으로</a>
<hr>
<table>
	<thead>
		<tr>
			<td>아이디</td><td>이름</td><td>나이</td><td>주소</td>
		</tr>
	</thead>
	<c:forEach items="${requestScope.List }" var="i">
	<tbody>
		<tr>
			<td>${i.id }</td><td>${i.name }</td><td>${i.age }</td><td>${i.address }</td>
			<td><a href="dispatcher?command=delete&id=${i.id }">삭제</a></td>
		</tr>
	</tbody>
	</c:forEach>
</table>

</body>
</html>