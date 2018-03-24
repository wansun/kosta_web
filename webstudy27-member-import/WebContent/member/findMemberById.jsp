<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <form name="findForm" method="get" action="${pageContext.request.contextPath}/dispatcher">
	<input type="hidden" name="command" value="findMemberById"> 		
	아이디 : <input type="text" name="memberId" required="required"> 
	<input type="submit" value="검색">
</form>









