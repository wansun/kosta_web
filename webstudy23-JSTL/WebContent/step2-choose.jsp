<%@page import="model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose when otherwise(if, else if, else)</title>
</head>
<body>
<%
		request.setAttribute("pvo", new PersonVO("은성민",29));
%>
EL로 출력. 이름  ${requestScope.pvo.name}   /  나이 ${requestScope.pvo.age }세
<hr>chose when otherwise 연습<br><br>
<c:choose>
	<c:when test="${requestScope.pvo.name=='조민경' }">
		조민경입니다. 사탕고마워요 오빵
	</c:when>
	<c:when test="${requestScope.pvo.name=='은성민' }">
		${requestScope.pvo.name} 입니다. 잘생겼습니다.
	</c:when>
	<c:otherwise>
		else 구문입니다.
	</c:otherwise>
</c:choose>
</body>
</html>