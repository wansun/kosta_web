<%@page import="model.PagingBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	PagingBean pb=new PagingBean();
	pb.setStartPage(10);
	pb.setEndPage(19);
	pb.setNowPage(15);
	request.setAttribute("paging", pb);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach begin end(paging)</title>
</head>
<body>
<c:forEach begin="${requestScope.paging.startPage }" end="${requestScope.paging.endPage }" var="num">
	<c:choose>
		<c:when test="${requestScope.paging.nowPage==num}">
			${num }&nbsp;&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a href="">${num }</a>&nbsp;&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>
</c:forEach>
</body>
</html>