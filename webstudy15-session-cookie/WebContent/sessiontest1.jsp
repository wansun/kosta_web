<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessiontest1</title>
</head>
<body>
<%--
	JSP가 웹 컨테이너에 의해 java로 생성될 때
	자동으로 request(HttpServletRequest)
	application (ServletContext)
	등은 생성하는 코드가 만들어지고
	실행되어 사용될 수 있다.
 --%>
<%=request %><br>
<%=application %><br>
<%=session %><br>
</body>
</html>