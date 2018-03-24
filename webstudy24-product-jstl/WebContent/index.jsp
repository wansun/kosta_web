<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/dispatcher">
<input type="hidden" name="command" value="findProduct">
상품번호 <input type="number" name="pno">
<input type="submit" value="검색">
<hr>
<a href="${pageContext.request.contextPath}/dispatcher?command=productList">상품목록</a>
<%--
	product_list.jsp
	번호   상품명   등록일
	3      갤럭시    2018
	......
 --%>
</form>
</body>
</html>