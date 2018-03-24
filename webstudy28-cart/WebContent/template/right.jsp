<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${sessionScope.memberDTO==null }">
		<form action="${pageContext.request.contextPath }/dispatcher" method="post">
		<input type="hidden" name="command" value="login">
			<table>
				<tr>
					<td><input type="text" name="memberId" placeholder="아이디 입력" required="required"></td>
				</tr>
				<tr>
					<td><input type="password" name="memberPassword" placeholder="비밀번호 입력" required="required"></td>
				</tr>
				<tr>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</c:when>
	<c:otherwise>
	${sessionScope.memberDTO.name } 님 로그인 <br><br>
	<a href="${pageContext.request.contextPath }/dispatcher?command=logout">로그아웃</a>
	<a href="${pageContext.request.contextPath }/dispatcher?command=register">상품등록</a>
	</c:otherwise>
</c:choose>