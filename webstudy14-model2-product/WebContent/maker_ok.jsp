<%@page import="org.kosta.model.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메이커 조회</title>
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
	ArrayList<ProductDTO> info3=(ArrayList<ProductDTO>)request.getAttribute("info3");
%>
<h2>메이커 검색 결과</h2>
<%for(ProductDTO p:info3) { %>
<table>	
	<tr>
		<td>아이디 : <%=p.getId()%><br></td>	
	</tr>
	
	<tr>
		<td>이름 : <%=p.getName()%><br></td>	
	</tr>
	
	<tr>
		<td>제조사 : <%=p.getMaker() %><br></td>	
	</tr>
	
	<tr>
		<td>가격 : <%=p.getPrice() %><br></td>	
	</tr>	
</table><br>
<%} %>
</body>
</html>