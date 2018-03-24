<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 이후 공부예정</title>
</head>
<body>
jsp에서 응답합니다.<br><br>
전송받은 아이디 : <%=request.getParameter("userId") %><br>
히든태그에서 보낸 command value : <%=request.getParameter("command") %>
<%-- <% 
	// jsp는 html 코드상에서 java를 삽입하는 형식으로 개발
	for(int i=0;i<10;i++){
%>
Hello JSP <br>
<%
	}
%> --%>
</body>
</html>