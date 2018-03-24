<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<%
		@SuppressWarnings("unchecked")
		ArrayList<String> list=(ArrayList<String>)request.getAttribute("list");
		for(String p:list){
	%>       <%=p %><br>
	<%} %>
</body>
</html>