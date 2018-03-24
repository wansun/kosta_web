<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model2 상품관리</title>
</head>
<body>
<h3>상품관리 시스템</h3><hr>
<ul>
<li>등록
<form action="Dispatcher" method="post">
<input type="hidden" name="command" value="register" style="border: 50px">
이름 <input type="text" name="name" required="required" style=""><br>
제조사 <input type="text" name="maker" required="required"><br>
가격 <input type="text" name="price" required="required"><br>
<input type="submit" value="등록"><br><br><br>
</form>
</li>

<li>상품 검색 (조건별 검색)

<form action="Dispatcher">
<input type="hidden" name="command" value="find1">
1. 검색(ID)<input type="text" name="findId">
<input type="submit" value="조회"><br>
</form>

<form action="Dispatcher">
<input type="hidden" name="command" value="find2">
2. 검색(NAME)<input type="text" name="findName">
<input type="submit" value="조회"><br>
</form>

<form action="Dispatcher">
<input type="hidden" name="command" value="find3">
3. 검색(MAKER)<input type="text" name="findMaker">
<input type="submit" value="조회"><br>
</form>

<form action="Dispatcher">
<input type="hidden" name="command" value="find4">
4. 검색(PRICE)<input type="text" name="minPrice" min="0" placeholder="최소가격">
~<input type="text" name="maxPrice" max="0" placeholder="최대가격">
<input type="submit" value="조회"><br>
</form><br><br><br>
</li>

<li>정보 조회
<form action="Dispatcher">
<input type="hidden" name="command" value="info">
제조사별 상품수
<input type="text" name="infoMaker" required="required">
<input type="submit" value="조회"><br>
</form>

<form action="Dispatcher">
<input type="hidden" name="command" value="info2">
제조사별 평균가
<input type="text" name="infPrice" required="required">
<input type="submit" value="조회">
</form>
</li>
</ul>
</body>
</html>