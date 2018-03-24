<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<form>메인화면 <br><br>
현재 고객수는 <%=request.getAttribute("count_Customer") %>명입니다.
</form>
</body>
</html>