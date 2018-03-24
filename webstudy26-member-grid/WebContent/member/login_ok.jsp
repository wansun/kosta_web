<%@page import="org.kosta.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인성공</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index.jsp">홈</a><hr>
${sessionScope.memberDTO.name }님 로그인 성공! 
<a href="${pageContext.request.contextPath}/member/cafe.jsp">카페입장하기</a>
</body>
</html>

















