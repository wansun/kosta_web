<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_list</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<table>
	<thead>
		<tr>
			<td>상품번호</td><td>상품명</td><td>등록일시</td>
		</tr>
	</thead>
	
	<tbody>		
			<c:forEach items="${requestScope.list}" var="p">
				<tr>
					<td>${p.pno}</td>
					<td>${p.name}</td>
					<td>${p.regDate}</td>
				</tr>	
			</c:forEach>				
	</tbody>
</table>

</body>
</html>