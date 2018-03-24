<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafe</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index.jsp">홈</a><hr>

${sessionScope.memberDTO.address }에 사는 님 카페입장환영 
<a href="${pageContext.request.contextPath }/dispatcher?command=logout">로그아웃</a>
</body>
</html>









