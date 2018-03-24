<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el param</title>
</head>
<body>
별명 : ${param.nick }<br>
메뉴 : ${paramValues.menu[0]} ${paramValues.menu[1]}
</body>
</html>