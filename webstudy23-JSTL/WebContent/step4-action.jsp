<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step4 주문</title>
</head>
<body bgcolor="pink" style="font-size: 50px">
${param.customerName }님 
<c:forEach items="${paramValues.food}" var="f">
${f} or
</c:forEach>
 주문하셨습니다.
</body>
</html>