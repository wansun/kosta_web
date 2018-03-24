<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회</th>
		</tr>
	</thead>
	<tbody>		
			<c:forEach items="${requestScope.home}" var="list">
				<tr>
					<td><a href="${pageContext.request.contextPath }/dispatcher?command=detail&bno=${list.bno}">${list.bno}</a></td>
					<td>${list.title}</td>
					<td>${list.memberDTO.name}</td>
					<td>${list.regdate}</td>
					<td>${list.bcount}</td>					
				</tr>	
			</c:forEach>				
	</tbody>
</table>
</div>