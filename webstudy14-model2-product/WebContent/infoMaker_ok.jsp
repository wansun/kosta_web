<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제조사 상품수 조회 완료</title>
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
	@SuppressWarnings("unchecked")
	ArrayList<Integer> info5=(ArrayList<Integer>)request.getAttribute("info5");
%>
<h2>상품수</h2>

<%for(int i=0;i<info5.size();i++) { %>	
<table>	
	<tr>	
		<td>조회한 제조사 상품수 : <%=info5.get(i)%><br></td>	
	</tr>	
</table><br>
<%} %>
</body>
</html>