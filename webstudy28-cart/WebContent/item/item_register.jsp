<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="registerResult">
<table class="table table-bordered">
	<tr>
		<td>name</td><td><input type="text" name="name" required="required"></td>
	</tr>
	<tr>
		<td>maker</td><td><input type="text" name="maker" required="required"></td>
	</tr>
	<tr>
		<td>price</td><td><input type="text" name="price" required="required"></td>
	</tr>
	<tr>
		<td>detail</td><td><input type="text" name="detail" required="required"></td>
	</tr>
	<tr>
		<td colspan="3"><br><input type="submit" value="상품등록"></td>
	</tr>	
</table>
</form>
</body>
</html>