<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${sessionScope.memberDTO==null }">
		<form action="${pageContext.request.contextPath }/dispatcher" method="post">
			<input type="hidden" name="command" value="login">
			<input type="text" name="id" placeholder="아이디 입력" required="required" >
			<input type="text" name="password" placeholder="비밀번호 입력" required="required" >
			<input type="submit" value="로그인">
	</form>
		
	</c:when>
	<c:otherwise>
		<a href="${pageContext.request.contextPath }/dispatcher?command=home">홈</a>
		<a href="${pageContext.request.contextPath }/dispatcher?command=register">글쓰기</a>
		${sessionScope.memberDTO.name } 님 환영합니다.
		<a href="${pageContext.request.contextPath }/dispatcher?command=logout">로그아웃</a>
	</c:otherwise>
</c:choose>

