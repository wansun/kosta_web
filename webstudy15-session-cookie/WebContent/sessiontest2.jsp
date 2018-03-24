<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessiontest2</title>
</head>
<body>
<%--
	JSP가 웹 컨테이너에 의해 java로 생성될 때
	자동으로 request(HttpServletRequest)
	application (ServletContext)
	등은 생성하는 코드가 만들어지고
	실행되어 사용될 수 있다.
	
	sessiontest2.jsp에서는 <%@ 즉 directive영역에서
	세션 자동 생성을 하지 않겠다고 명시하여
	(session="false")
	세션을 필요시 직접 코딩하여 사용하도록 설정해본다.
 --%>
<%=request %><br>
<%=application %><br>
<%-- <%=session %><br> --%>
<%
	//필요시 직접 코드를 기술해 사용할 수 있다.
	//HttpSession session=request.getSession();
%>
</body>
</html>