<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login화면</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/dispatcher">
<input type="hidden" name="command" value="login">
아이디 <input type="text" name="memberId" required="required"><br>
패스워드 <input type="password" name="memberPassword" required="required"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>











