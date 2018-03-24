<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl import(jsp:include와 역할이 동일)</title>
</head>
<body>
<%-- header.jsp를 import --%>
<c:import url="header.jsp"></c:import>
이 부분은 본문 내용입니다.
<%-- fooder.jsp를 import --%>
<c:import url="footer.jsp"></c:import>
</body>
</html>