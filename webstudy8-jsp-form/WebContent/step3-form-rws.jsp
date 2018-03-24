<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="step3-action-rws.jsp" method="post">
이름<input type="text" name="memName" required="required"><br>
나이<input type="text" name="memAge" required="required">
<input type="submit" value="전송">
</form>
<%--   1세 ~ 13세 이하이면 
	   8세 최상경 어린이
	   
	   14세 ~ 19세 이하이면
	   16세 박재석 청소년
	   
	   19세 초과시
	   27세 김현길 어른
 --%>
</body>
</html>