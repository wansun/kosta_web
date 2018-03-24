<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step5-action</title>
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

tr:hover {background-color:#f5f5f5;}
</style>
</head>
<body>
<table>
	<thead>
		<tr>
			<td>NO</td><td>메뉴명</td>
		</tr>
	</thead>
	<tbody>
		<%
			request.setCharacterEncoding("utf-8");
			String[] food=request.getParameterValues("food");			
		%>
		<%for(int i=0;i<food.length;i++){ %>
		<tr>
			<td><%=i+1%></td>
			<td><%=food[i]%></td>		
		</tr>
		<%} %>
	</tbody>
</table>
</body>
</html>