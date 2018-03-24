<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach begin end</title>
</head>
<body>
<% //컨트롤러에서 전달한다고 가정
		int nowPage=3;
		request.setAttribute("nowPage", nowPage);
		//아래 출력되는 1에서 5에서 
		//nowPage를 제외한 나머지 번호에는 링크를 부여해본다.
%>
<c:forEach begin="1" end="5" var="num">
	<c:choose>
		<c:when test="${requestScope.nowPage!=num }">
			<a href="">${num }</a>&nbsp;&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
		${num }&nbsp;&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>
</c:forEach>
</body>
</html>










