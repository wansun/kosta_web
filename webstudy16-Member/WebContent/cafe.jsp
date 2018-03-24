<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafe</title>
</head>
<body>
<%
	MemberDTO dto=(MemberDTO)session.getAttribute("memberDTO");
%>
<a href="index.jsp">홈</a><hr>
<%=dto.getAddress()%>에 사는<%=dto.getName() %> 님 카페입장환영
<a href="dispatcher?command=logout">로그아웃</a>
</body>
</html>