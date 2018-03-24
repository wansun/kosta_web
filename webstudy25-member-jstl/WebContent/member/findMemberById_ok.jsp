<%@page import="org.kosta.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>
<div class="container">
<a href="index.jsp">홈</a><hr>

	회원 검색 결과 <br><br>
	아이디 ${requestScope.memberDTO.id }<br>
	이름 ${requestScope.memberDTO.name }<br>
	주소 ${requestScope.memberDTO.address }
</div>
</body>
</html>










