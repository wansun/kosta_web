<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원검색</title>
<script type="text/javascript">
	function startRequest(){
		document.addressForm.submit();
	}
</script>
</head>
<body>
<a href="index.jsp">홈</a><hr>
	<form name="addressForm" method="get" action="${pageContext.request.contextPath }/dispatcher">
		<input 	type="hidden" name="command" value="findMemberByAddress">
		<select name="address" onchange="startRequest()">			
					<option value="--선택--">--- 주소 선택 ---</option>
					<c:forEach items="${requestScope.list }" var="address">
						<option value="${address }">${address }</option>
					</c:forEach>
					
		</select>
	</form>
</body>
</html>









