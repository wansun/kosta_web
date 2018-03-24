<%@page import="org.kosta.model.ProductDTO"%>
<%@page import="org.kosta.model.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품검색 결과</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<%-- 
	상품번호에 해당하는 상품정보가 있으면
	아래와 같이 출력한다.
	상품번호 : 1
	상품명 : 아이폰
	제조사 : 애플
	가격 : 1000
	등록일시 : 2018-03-14
	
	없으면 
	javascript alert 으로
	0번에 해당하는 상품이 존재하지 않습니다.
	확인 누르면 index로 보낸다.
	
 --%>
<%-- 
<%
	ProductDTO dto=(ProductDTO)request.getAttribute("dto");
	if(dto!=null){
%>
<%=dto.getPno() %>
<%=dto.getName() %>
<%=dto.getMaker() %>
<%=dto.getPrice() %>
<%=dto.getRegDate() %>
<%} %> 
--%>
<c:choose>
<c:when test="${dto.pno==null}">
	<script type="text/javascript">
	 	alert(${param.pno}+ "에 해당하는 상품이 존재하지 않습니다.");
	 	location.href="index.jsp";
	</script>
</c:when>
	<c:otherwise>
		<table>
			<tr>
				<td>${dto.pno}</td>
				<td>${dto.name}</td>
				<td>${dto.maker}</td>
				<td>${dto.price}</td>
				<td>${dto.regDate}</td>
			</tr>
		</table>
	</c:otherwise>
</c:choose>
</body>
</html>






