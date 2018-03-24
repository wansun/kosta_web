<%@page import="model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link rel="stylesheet" type="text/css" href="home.css">
<script type="text/javascript">
<%
	ProductDTO dto=(ProductDTO)request.getAttribute("dto");
%>
function confirmRemove(){
	
	if(confirm("상품을 삭제하시겠습니까?")){
		
		location.href="dispatcher?command=removeProduct&removePno=<%=dto.getPno()%>";
	}
}
</script>
</head>
<body>
<a href="dispatcher?command=productlist">홈</a>  <!-- <a href="dispatcher?command=productlist">상품목록</a> --><hr>
<table>
	<tr>
		<td>상품번호</td><td><%=dto.getPno() %></td>
	</tr>
	<tr>
		<td>상품명</td><td><%=dto.getName() %></td>
	</tr>
	<tr>
		<td>제조사</td><td><%=dto.getMaker() %></td>
	</tr>
	<tr>	
		<td>가격</td><td><%=dto.getPrice() %></td>
	</tr>
	<tr>
		<td>등록일시</td><td><%=dto.getDate() %></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="button" value="삭제" onclick="confirmRemove()"></td>
	</tr>
</table>


</body>
</html>