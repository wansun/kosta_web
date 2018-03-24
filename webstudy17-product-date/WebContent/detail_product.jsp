<%@page import="model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
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
<a href="index.jsp">홈</a>  <a href="dispatcher?command=productlist">상품목록</a><hr>
<table>
	<tr>
	<td><%=dto.getPno() %></td>
	<td><%=dto.getName() %></td>
	<td><%=dto.getMaker() %></td>
	<td><%=dto.getPrice() %></td>
	<td><%=dto.getDate() %></td>
	</tr>
</table>
<input type="button" value="삭제" onclick="confirmRemove()">

</body>
</html>