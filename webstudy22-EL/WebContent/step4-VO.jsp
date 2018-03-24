<%@page import="model.TestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 로 객체 접근</title>
</head>
<body>
<%
	request.setAttribute("testVO", new TestVO());
%>
<%--
		EL에서 객체에 접근 할 경우
		get으로 시직하는 메서드와
		is로 시작하는 메서드에만 접근할 수 있다.
 --%>
name을 출력 (getName() 메서드에 접근) : ${requestScope.testVO.name }<br>
nick을 출력(findNick()메서드에 접근--안된다. find가 아닌 get메서드로 명시되야함) : <%-- ${ requestScope.testVo.nick} --%>
<br>
isPerson() 메서드에 접근 : ${requestScope.testVO.person }
<br><br><br>
연산테스트<br><br>
${requestScope.testVO.money }<br>
${requestScope.testVO.money*2 }<br>
${requestScope.testVO.money==100 }<br>
${requestScope.testVO.money<0 }<br>
${requestScope.testVO.money>0 && requestScope.testVO.money>100 }<br>
</body>
</html>














