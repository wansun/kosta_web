<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
<%
	MemberDTO dto=(MemberDTO)session.getAttribute("memberDTO");
%>
<a href="index.jsp">홈</a><hr>
<h3>회원정보수정</h3>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="update">
아이디 : <input type="text" name="updateId" readonly="readonly"  value=" <%=dto.getId() %>"><br>
패스워드 : <input type="text" name="updatePass"  value=" <%=dto.getPass() %>"><br>
이름 : <input type="text" name="updateName"  value=" <%=dto.getName() %>"><br>
주소 : <input type="text" name="updateAddress" value=" <%=dto.getAddress() %>"><br>
<input type="submit" value="회원정보수정">
</form>
</body>
</html>