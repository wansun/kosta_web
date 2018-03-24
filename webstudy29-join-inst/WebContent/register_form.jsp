<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>사원등록폼</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<br><br>
			<a href="index.jsp">Home</a>		
		<br><br>
			<form method="post" action="dispatcher">
				<input type="hidden" name="command" value="RegisterEmployee">
				사원명 <input type="text" name="ename" required="required"><br>
				<br> 월급&nbsp;&nbsp;&nbsp;  <input type="number" name="sal" required="required"><br>
				<br> 부서&nbsp;&nbsp;&nbsp;  <select name="deptno" required="required">
					<c:forEach items="${requestScope.deptList}" var="dept">
						<option value="${dept.deptno}">${dept.dname}</option>
					</c:forEach>
				</select><br>
				<br>&nbsp;<input type="submit" value="등록">
			</form>
		</div>
		<div class="col-sm-2"></div>
	</div>
</body>
</html>