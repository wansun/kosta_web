<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
</head>
<body>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="registerResult">
사원명 <input type="text" name="ename" required="required"><br>
월급 <input type="text" name="sal" required="required"><br>
부서 
	<select name="deptno">
	        <option value="">--------</option>
		<c:forEach items="${requestScope.department }" var="d">
			<option value="${d.dname }">${d.dname }</option>		
		</c:forEach>	
	</select><br>
<input type="submit" value="등록">
</form>
</body>
</html>