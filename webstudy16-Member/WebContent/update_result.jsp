<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정결과</title>
</head>
<body>
<%
	MemberDTO dto=(MemberDTO)session.getAttribute("memberDTO");
%>
<a href="index.jsp">홈</a>
<h3>회원정보 수정결과</h3>
아이디 : <%=dto.getId() %> <br>
패스워드 : <%=dto.getPass() %> <br>
이름 : <%=dto.getName() %> <br>
주소 : <%=dto.getAddress() %> <br>
</body>
</html>