<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<a href="index.jsp">홈</a><hr>
<%
	MemberDTO dto=(MemberDTO)session.getAttribute("memberDTO");
%>

<%=dto.getName()%>님 로그인 성공!
<a href="cafe.jsp">카페입장</a>

</body>
</html>