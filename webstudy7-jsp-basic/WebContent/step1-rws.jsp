<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본문법</title>
</head>
<body>
<%-- 정수형 money값 설정하여 5번 대박나세요 글자 출력 --%>
<%int money=0; %>
<%for(int i=0;i<5;i++) {%>
	대박나세요<%=++money%><br><br>
<%} %>
</body>
</html>