<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ServletContext test</title>
</head>
<body>
ServletContext 에 접근하여 초기 파라미터 값을 출력
<%=application.getInitParameter("adminId") %><br><br>
ServletContext 정보는 웹어플리케이션 내의 모든 서블릿과 jsp가
접근할 수 있는 정보다<hr>
ServletContext에 공유된 angel정보 반환받아 출력
<%=application.getAttribute("angel") %>
<hr>
<%=application.getAttribute("companyInfo") %>
</body>
</html>