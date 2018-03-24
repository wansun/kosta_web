<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<h3>회원가입</h3>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="registerCustomer">
아이디 : <input type="text" name="id" required="required">
<input type="button" value="중복확인"><br>
패스워드 : <input type="text" name="password" required="required"><br>
패스워드 확인 : <input type="text" name="confirmPassword" required="required"><br>
이름 : <input type="text" name="name" required="required"><br>
주소 : <input type="text" name="address" required="required"><br>
생일 : <input type="date" name="birthday" required="required"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>