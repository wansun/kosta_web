<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
 	<c:when test="${param.userAge>=19 }">
 		${param.userName }님 ${param.userAge }세 어른입니다.
 	</c:when>
 	
 	<c:when test="${param.userAge>=13}">
 		${param.userName }님 ${param.userAge }세 청소년입니다.
 	</c:when>
 	
 	<c:when test="${param.userAge>=1 }">
 		${param.userName }님 ${param.userAge }세 어린이 입니다
 	</c:when>
 	
 	<c:otherwise>
 		${param.userName }님 출생전입니다.
 	</c:otherwise>
 </c:choose>
</body>
</html>