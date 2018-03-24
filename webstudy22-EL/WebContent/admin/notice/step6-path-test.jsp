<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경로 연습</title>
</head>
<body>
<%-- 회 이미지를 보여준다. --%>
<h2>경로연습</h2>
<img src="${pageContext.request.contextPath}/picture/회.jpg">
<br><br>
<a href="${pageContext.request.contextPath}/step2-param.jsp?command=testEL&userName=유바롬&userAge=28">step2로 이동</a>

<br><br>
<form action="${pageContext.request.contextPath}/step2-param.jsp">
	<input type="hidden" name="command" value="testEL">
	이름<input type="text" name="userName"><br>
	나이<input type="number" name="userAge"><br>
	<input type="submit" value="전송">
</form>
</body>
</html>











