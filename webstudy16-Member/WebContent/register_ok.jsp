<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
</head>
<body>
<%
	MemberDTO dto=(MemberDTO)session.getAttribute("memberDTO");
%>
<a href="index.jsp" style="color: orange;">홈</a><hr>
<%=dto.getName() %> 님 회원가입을 축하합니다.
</body>
</html>