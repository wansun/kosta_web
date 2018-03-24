<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/index.jsp">home</a><hr>
<h3>회원정보수정</h3><br>
<form action="${pageContext.request.contextPath }/dispatcher" method="post">
<input type="hidden" name="command" value="update">
아이디 <input type="text" name="memberId" readonly="readonly" 
value="${sessionScope.memberDTO.id }"><br>	
패스워드 <input type="text" name="memberPassword" 
value="${sessionScope.memberDTO.password }"><br>	
이름 <input type="text" name="memberName" value="${sessionScope.memberDTO.name }"><br>	
주소 <input type="text" name="memberAddress" value="${sessionScope.memberDTO.address }"><br>	
<input type="submit" value="수정하기">
</form>
</body>
</html>
















