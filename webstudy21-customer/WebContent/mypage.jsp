<%@page import="model.CustomerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<%
	CustomerVO vo=(CustomerVO)session.getAttribute("myInfo");
%>
<table>
	<tbody>
		<tr>
			<td>아이디</td><td><%=vo.getId() %></td>
		</tr>
		<tr>
			<td>이름</td><td><%=vo.getName() %></td>
		</tr>
		<tr>
			<td>주소</td><td><%=vo.getAddress() %></td>
		</tr>
		<tr>
			<td>생일</td><td><%=vo.getBirthday() %> 만<%=vo.getAge() %>세</td>
		</tr>
		<tr>
			<td>등록일시</td><td><%=vo.getRegdate() %></td>
		</tr>
	</tbody>
</table>
</body>
</html>