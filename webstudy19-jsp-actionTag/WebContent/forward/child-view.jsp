<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>child-view.jsp</title>
</head>
<body bgcolor="pink">
<%=request.getParameter("userAge") %>세
<%=request.getParameter("userName") %>님
아이들 홈에 입장하셨습니다.
<%
	//forward-action.jsp 에서 encoding 하였으니
	//여기서는 다시 decoding 해줘야한다.
	String m=request.getParameter("message");
	m=URLDecoder.decode(m,"utf-8");
%>
<%=m %>
</body>
</html>