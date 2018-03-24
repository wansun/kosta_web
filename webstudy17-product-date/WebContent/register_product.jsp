<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈 상품목록</title>
<script type="text/javascript">

</script>
</head>
<body>
<a href="index.jsp">홈</a>   <a href="product_list.jsp">상품목록</a><hr>
<h3>상품등록</h3>
<form action="dispatcher" method="post" name="registerForm">
<input type="hidden" name="command" value="registerProduct">
상품명<input type="text" name="productName" required="required"><br>
제조사<input type="text" name="productMaker" required="required"><br>
가격<input type="text" name="productPrice" required="required"><br>
<input type="submit" value="등록">

</form>
</body>
</html>