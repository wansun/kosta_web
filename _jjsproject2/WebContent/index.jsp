<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈</title>
</head>
<body>
<%--
	id 로 찾기
 --%>
<h3>아이디로 찾기</h3><hr>
<form action="dispatcher" method="post">
<input type="hidden" name = "command" value ="findById">
아이디 <input type = "text" name = "id" required="required"><br>
<input type="submit" value="검색"><br>
</form>
<hr>
<a href="dispatcher?command=userList">전체 목록 보기</a>

</body>
</html>