<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 기본2</title>
</head>
<body>
<%-- 아래 표현은 인스턴스 변수 count를 선언하고
	기본 초기화되는 코드다.
 --%>
<%! int count; %>
조회수 <%=++count %><hr>
<%=new Date() %>
</body>
</html>