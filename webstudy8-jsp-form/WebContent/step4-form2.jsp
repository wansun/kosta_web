<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step4 form select</title>
<script type="text/javascript">
	function sendLine(){
		if(document.subwayForm.subway.value=="")
			alert("호선을 선택하세요");
		else
		document.subwayForm.submit();
	}
</script>
</head>
<body>
<%-- select option 선택 즉시 submit 되도록
	 javascript를 이용해서 요청해본다
 --%>
<form action="step4-action.jsp" method="get" name="subwayForm">
	<select name="subway" required="required" onchange="sendLine()">
		<option value="">--호선--</option>
		<%for(int i=1;i<10;i++){ %>		
		<option value="<%=i%>"><%=i%>호선</option>
		<%} %>
	</select>
	<!-- <input type="submit" value="선택"> -->
</form>
</body>
</html>