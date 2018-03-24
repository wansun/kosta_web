<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step3-choose-form.jsp</title>
</head>
<body>
<form action="step3-choose-action.jsp">
이름<input type="text" name="userName"><br>
나이<input type="number" name="userAge"><br>
<input type="submit" value="전송">
</form>
<%--
		step3-choose-action.jsp
		19세 이상이면
		은성민님 29세 성인입니다.
		13세 이상이면
		은성민님 18세 청소년입니다.
		1세~13세 미만이면
		은성민님 5세 어린이입니다.
		1세 미만이면
		은성민님 출생전입니다.
 --%>
 
</body>
</html>



