<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<br><hr>
<table class="table">

	<thead>
		<tr>
			<th>글번호 : ${requestScope.dto.bno }</th>
			<th>제목 : ${requestScope.dto.title}</th>
			<th>작성자 : ${requestScope.dto.memberDTO.name}</th>
			<th>조회수 : ${requestScope.dto.bcount}</th>
			<th>날짜 : ${requestScope.dto.regdate}</th>
		</tr>		
	</thead>
	<tbody class="tb">
			<tr>
				<td colspan="5"><pre>내용${requestScope.dto.text}</pre></td>
			</tr>
	</tbody>
</table>
<hr>
<c:if test="${requestScope.dto.id==requestScope.dto.memberDTO.id }">
<form action="dispatcher">
	<input type="button" value="삭제">
	<input type="button" value="수정">
</form>
</c:if>
