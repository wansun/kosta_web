<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<a href="index.jsp">Home</a>
<hr>
<table class="table">
	<thead>
		<tr>
			<td>사원번호</td><td>사원명</td><td>월급</td><td>부서번호</td>
			<td>부서명</td><td>지역</td><td>TEL</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.list }" var="i">
		<tr>
			<td>${i.empno }</td>
			<td>${i.ename }</td>
			<td>${i.sal }</td>
			<td>${i.departmentVO.deptno }</td>
			<td>${i.departmentVO.dname }</td>
			<td>${i.departmentVO.loc }</td>
			<td>${i.departmentVO.tel }</td>
		</tr>
		
		</c:forEach>
	</tbody>	
</table>
</body>
</html>