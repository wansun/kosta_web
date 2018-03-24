<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 파라미터 처리</title>
</head>
<body>
1. 기존 방식 (scriptlet)으로 처리 <br>
커맨드 : <%=request.getParameter("command") %><br>
이름 : <%=request.getParameter("userName") %><br>
<%
	int age=Integer.parseInt(request.getParameter("userAge"));
%>
나이 : <%=age-1 %><br>
<%--나이를 반호나받아 1살 어리게 출력 --%>
<%=request.getParameter("ttt") %>
<%-- 기존 스크립틀릿 방식으로 처리하면 null 이 화면에 출력된다 --%>
<hr>
2. EL 로 파라미터 처리<br>
커맨드 : ${param.command }<br>
이름 : ${param.userName }<br>
나이 : ${param.userAge-1 }<br>
${param.ttt }<br><br> <%-- EL 은 null일경우 화면상에 null 출력이 안된다. --%>
<form action="step3.jsp">
별명<input type="text" name="nick"><br>
백반 <input type="checkbox" name="menu" value="백반"><br>
김밥 <input type="checkbox" name="menu" value="김밥"><br>
<input type="submit" value="전송">
</form>
</body>
</html>