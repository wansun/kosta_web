<%@page import="org.kosta.model.CustomerDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok</title>
</head>
<body>
<%CustomerDTO dto = (CustomerDTO)request.getAttribute("info"); %>
<h3>검색된 정보</h3>
아이디 : <%=dto.getId() %><br>이름 : <%=dto.getName()%><br>주소 : <%=dto.getAddress() %>
</body>
</html>