<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<form action="${pageContext.request.contextPath }/dispatcher" method="post">
<input type="hidden" name="command" value="registerview">
<table class="table">
	<tr>
		<td>제목 <input type="text" name="title"  placeholder="제목을 입력하세요" required="required"></td>
	</tr>
	<tr>
		<td>
			<textarea rows="20" cols="150" name="text" placeholder="내용을 입력하세요" required="required"></textarea>
		</td>
	</tr>
</table>
<input type="submit" value="확인">
<input type="reset" value="취소">
</form>

