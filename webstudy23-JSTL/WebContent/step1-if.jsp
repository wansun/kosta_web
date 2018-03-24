<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl을 사용하기 위한 선언부 --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL if</title>
</head>
<body>
<c:if test="true">
	jstl if 실행 test ="true or false" 로 표현되어야 한다.
</c:if>
<c:if test="false">
	false는 실행안된다
</c:if>
<a href="step1-if.jsp?command=jstl&age=13">step1을 다시 호출</a><br><br>
<c:if test="${param.command=='jstl' && param.age<20}">
	command: ${param.command }   age: ${param.age }
</c:if>
</body>
</html>