<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step4 form select</title>
</head>
<body>
<%-- 1 ~ 4호선 이면 코레일 3호선 입니다.
	 5 ~ 9호선 이면 도시철도 8호선 입니다.
 --%>
<form action="step4-action.jsp" method="get">
	<select name="subway">
		<option value="">--호선--</option>
		<%for(int i=1;i<10;i++){ %>		
		<option value="<%=i%>"><%=i%>호선</option>
		<%} %>
	</select>
	<input type="submit" value="선택">
</form>
</body>
</html>