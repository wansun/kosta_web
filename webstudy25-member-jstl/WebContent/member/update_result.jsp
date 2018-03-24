<%@page import="org.kosta.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update 결과화면 </title>
</head>
<body>

<a href="${pageContext.request.contextPath }/index.jsp">home</a><hr>
<h3>회원정보수정결과화면</h3><br>
아이디 : ${sessionScope.memberDTO.id } <br>
패스워드 : ${sessionScope.memberDTO.password }<br>
이름 :  ${sessionScope.memberDTO.name }<br>
주소 : ${sessionScope.memberDTO.address }
</body>
</html>









