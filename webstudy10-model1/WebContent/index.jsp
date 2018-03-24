<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model1 architecture</title>
</head>
<body>
	<h3>Model1 architecture</h3>
	<ul>
		<li><a href="allMemberCount.jsp">전체 회원수 보기</a></li>
		<li>
			<form action="findMemberListByAddress.jsp">
				주소 <input type="text" name="memAddress" required="required"> 
				<input type="submit" value="검색">
			</form>
			<%-- 판교에 사는 회원 명단
				 순번  아이디 이름
				 
				 없으면 javascript alert 으로 부산에 사는 회원없음
				 다시 index.jsp로 보낸다
			 --%>			
		</li>
	</ul>
	<hr>
	<img src="model1.jpg">
</body>
</html>