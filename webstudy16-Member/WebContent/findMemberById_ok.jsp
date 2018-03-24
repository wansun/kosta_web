<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find success</title>
</head>
<body>
<a href="index.jsp">홈</a><hr>
<%
	MemberDTO dto=(MemberDTO)request.getAttribute("memberDTO");
%>
회원 검색 결과 :
<%=dto.getId() %>
<%=dto.getName() %>
<%=dto.getAddress() %>
</body>
</html>





