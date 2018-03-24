<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp db home</title>
</head>
<body>
	<h3>jsp와 database 연동</h3>
	<ul>
		<li><a href="allMemberCount.jsp">전체 회원수 보기</a></li>
		<li>
			<form action="findMemberById.jsp">
				ID <input type="text" name="memId" required="required"> 
				<input type="submit" value="검색">
			</form>
			<!-- 존재하면 java 아이디 회원정보 이름:김영호 주소:판교 
				존재하지 않으면 alert("aaa 아이디에 대한 회원없음");
				location.href="index.jsp";
			-->
		</li>
	</ul>
</body>
</html>