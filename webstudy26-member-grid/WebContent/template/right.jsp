<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:choose>
	<c:when test="${sessionScope.memberDTO==null }">
	<form action="${pageContext.request.contextPath}/dispatcher" method="post">
	<input type="hidden" name="command" value="login">
	<table>
		<tr>
			<td>아이디</td><td><input type="text" name="memberId" required="required"></td>
		</tr>
		<tr>
			<td>패스워드</td><td><input type="password" name="memberPassword" required="required"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="로그인"></td>
		</tr>
		<tr>	
			<td colspan="2" align="right"><a href="${pageContext.request.contextPath }/member/register.jsp">회원가입</a></td>
		</tr>
	</table>
	</form>
	</c:when>
	<c:otherwise>
	${sessionScope.memberDTO.name }님<br><br>
	<a href="${pageContext.request.contextPath }/dispatcher?command=logout">로그아웃</a><br><br>
	<a href="${pageContext.request.contextPath }/member/cafe.jsp">카페가기</a>
	</c:otherwise>	
</c:choose>
<br><br>
<a href="${pageContext.request.contextPath }/member/findMemberById.jsp">아이디로 회원검색</a>
