<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-bordered">
	
		<thead>
			<tr>
				<th>번호</th><th>제품명</th><th>제조사</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.itemList }" var="item">
			<tr >
				<td><a href="dispatcher?command=detail&item_no=${item.itemNo }">${item.itemNo }</a></td>
				<td>${item.name }</td>
				<td>${item.maker }</td>
			</tr>
			</c:forEach>	
		</tbody>
		
	
</table>