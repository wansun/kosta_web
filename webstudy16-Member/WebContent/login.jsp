<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<a href="index.jsp">홈</a><hr>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="login">
아이디 <input type="text" name="loginId" required="required"><br>
비밀번호 <input type="password" name="loginPass" required="required"><br>
<input type="submit" value="로그인"><br>
</form>
</body>
</html>