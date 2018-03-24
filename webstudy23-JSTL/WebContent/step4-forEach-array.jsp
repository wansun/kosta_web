<%@page import="model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 	String name[]={"김지은B","변태섭","한샘"};
 	request.setAttribute("nameArray", name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl forEach을 이용해 array을 표현</title>
</head>
<body>
jstl forEach를 이용해 배열 요소를 출력 1<br>
<c:forEach items="${requestScope.nameArray }" var="name" varStatus="info">
 count : ${info.count}   / index : ${info.index} /  요소정보 : ${name }<br>
</c:forEach>
<hr>
<%
	PersonVO pa[]={new PersonVO("황명아",22),new PersonVO("변태섭",18),new PersonVO("한샘",25)};
	request.setAttribute("plist", pa);
%>
jstl forEach를 이용해 배열 요소를 출력 2<br>
<%-- 20세 이상 사람의 이름과 나이를 출력 
		1. 황명아 22세
		2. 한샘    25세  --%>
<c:forEach items="${requestScope.plist}" var="p" varStatus="info">
	<c:if test="${p.age>=20 }">
		${info.count } . ${p.name } ${p.age }세<br>
	</c:if>
</c:forEach>
<hr>
<form action="step4-action.jsp">
주문자<input type="text" name="customerName"><br>
<input type="checkbox" name="food" value="양꼬치">양꼬치<br>
<input type="checkbox" name="food" value="칭따오">칭따오<br>
<input type="checkbox" name="food" value="피자">피자<br>
<input type="submit" value="주문">
</form>
<%-- step4-action.jsp 
		변태섭님 양꼬치, 피자 주문했습니다.
--%>
</body>
</html>