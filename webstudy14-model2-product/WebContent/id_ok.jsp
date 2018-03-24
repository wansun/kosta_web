<%@page import="org.kosta.model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 조회</title>
<style>
table {
	border-collapse: collapse;
	width: 20%;
}

th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5;
}
</style>
</head>
<body>
<%
	ProductDTO dto=(ProductDTO)request.getAttribute("info1");
%>
<h2>아이디 검색 결과</h2>
<table>
	<tr>
		<td>아이디 : <%=dto.getId() %><br></td>	
	</tr>
	
	<tr>
		<td>이름 : <%=dto.getName() %><br></td>	
	</tr>
	
	<tr>
		<td>제조사 : <%=dto.getMaker() %><br></td>	
	</tr>
	
	<tr>
		<td>가격 : <%=dto.getPrice() %><br></td>	
	</tr>
	
</table>
</body>
</html>