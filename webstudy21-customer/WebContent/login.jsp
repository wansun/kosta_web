<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<script type="text/javascript">
function confirmInfo() {
	
}
</script>
<body>
<jsp:include page="header.jsp"/>
<form action="dispatcher" method="post" onsubmit="return confirmInfo()">
<input type="hidden" name="command" value="login">
아이디 : <input type="text" name="id" required="required"><br>
패스워드 : <input type="text" name="password" required="required"><br>
<input type="submit" value="로그인" onclick="return confirmInfo()">
</form>
</body>
</html>