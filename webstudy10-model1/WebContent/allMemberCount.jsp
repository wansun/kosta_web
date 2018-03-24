<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>model1 전체회원</title>
</head>
<body>
<%-- model.MemberDAO를 이용해 회원수를 응답한다. --%>
<% /* MemberDAO dao=new MemberDAO(); */ 
	MemberDAO dao=MemberDAO.getInstance();
%>

총 회원수 <%=dao.getMemberCount() %>명
</body>
</html>