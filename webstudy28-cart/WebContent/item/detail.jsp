<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="addcart">
<table class="table table-bordered">							
			<tr >
				<td>NO</td><td>${itemDetail.itemNo }</td>				
			</tr>
			<tr >
				<td>name</td><td>${itemDetail.name }</td>				
			</tr>
			<tr >
				<td>maker</td><td>${itemDetail.maker }</td>				
			</tr>
			<tr >
				<td>price</td><td>${itemDetail.price }</td>				
			</tr>
			<tr >
				<td>detail</td><td>${itemDetail.detail }</td>				
			</tr>
			<tr>
				<td  colspan="3"><input type="submit" value="장바구니에 담기"></td>
			</tr>
</table>
</form>