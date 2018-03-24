<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
<a href="index.jsp">홈</a><hr>
${param.address }에 사는 회원 목록
		<br><br>
		<table>
		<c:forEach items="${requestScope.list }" var="member">	
			<tr>
				<td>${member.id }</td>
				<td>${member.name }</td>
			</tr>	
			</c:forEach>	
		</table>
</body>
</html>






















