<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step3-action-rws</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("memName");
	String s=request.getParameter("memAge");
	int age=Integer.parseInt(s);
	if(age>0 && age<14){
%>
<%=age %>세 어린이 : <%=name %>
<%}else if(age>13 && age<20){ %>
<%=age %>세 청소년 : <%=name %>
<%}else if(age>19){ %>
<%=age %>세 어른 : <%=name %>
<%}else{ %>
	출생전입니다.
<%} %>
</body>
</html>