<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step6-action</title>
</head>
<body>

<%
	int num = Integer.parseInt(request.getParameter("score"));
	String grade=null;
	if(num>=90)
		grade="A";
	else if(num>=50)
		grade="B";
	else
		grade="F";
%>
<%
	if(grade.equals("F")) {

%>
	<script type="text/javascript">
		alert("<%=grade%>학점입니다.\n재수강페이지로 이동!");
		location.href="F-page.jsp";
	</script> 
	
<%
	} else { 
%>

<%=grade%> 학점입니다.	

<%
	} 
%>

</body>
</html>