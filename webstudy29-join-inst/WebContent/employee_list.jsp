<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체사원정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<br>
			<a href="index.jsp">Home</a>
			<br><br>
			<table class="table">
				<tr>
					<th>사원번호</th>
					<th>사원명</th>
					<th>월급</th>
					<th>부서번호</th>
					<th>부서명</th>
					<th>지역</th>
					<th>TEL</th>
				</tr>
				<c:forEach items="${requestScope.list}" var="emp">
					<tr>
						<td>${emp.empno}</td>
						<td>${emp.ename}</td>
						<td>${emp.sal}</td>
						<td>${emp.departmentVO.deptno}</td>
						<td>${emp.departmentVO.dname}</td>
						<td>${emp.departmentVO.loc}</td>
						<td>${emp.departmentVO.tel}</td>
					</tr>
				</c:forEach>
			</table>
			</div>
			<div class="col-sm-2"></div>
		</div>
</body>
</html>


