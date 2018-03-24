<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model2 상품관리</title>
<jsp:forward page="dispatcher?command=productlist"/>
</head>
<body>
<h3>Model2 상품관리</h3>

<a href="dispatcher?command=productlist">상품목록</a><br>
<a href="register_product.jsp">상품등록</a>

</body>
</html>