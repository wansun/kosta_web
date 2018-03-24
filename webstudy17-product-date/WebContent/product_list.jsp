<%@page import="model.ProductDTO"%>
<%@page import="model.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<a href="index.jsp">홈</a>  <a href="register_product.jsp">등록</a><hr>
<%
	@SuppressWarnings("unchecked")
	ArrayList<ProductDTO> list=(ArrayList<ProductDTO>)request.getAttribute("productlist");
%>
<table>
<% 
for(int i=0;i<list.size();i++){
%>

<tr>
	<td><%=list.get(i).getPno() %></td>
	<td><a href="dispatcher?command=detailproduct&productDetailPno=<%=list.get(i).getPno()%>"><%=list.get(i).getName() %></a></td>
	<td><%=list.get(i).getDate() %></td>
</tr>

<%} %>
</table>
</body>
</html>