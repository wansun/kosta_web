<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디로 검색 결과</title>
</head>
<body>
${requestScope.findInfo.name}
${requestScope.findInfo.age}
</body>
</html>