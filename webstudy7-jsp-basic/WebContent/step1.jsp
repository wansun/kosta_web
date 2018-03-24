<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 기본 문법</title>
</head>
<body>
<!--html 주석-->
<%-- jsp 주석 : 소스페이지에서 숨겨져있음, 서버 개발자들만 볼 수 있다.--%>
jsp 기본 문법 ..
<br><br>
jsp는 html 코드 내에 자바를 삽입하는 형태로 개발한다.<br><br>
<%-- <% scriptlet : 서비스 메서드내에 삽입하는 코드 %> --%>
<%-- 아래 money 변수는서비스내에 생성되는 코드로서 
         메서드 내에 선언되므로 지역변수이다.
         그러므로 반드시 명시적인 추기화가 되어야 사용할 수 있다.
--%>
<% int money=0; %>

<%for(int i=0;i<5;i++){%>
	            <%-- <%= %> : 출력을 위한 표현식 out.print()와 동일 --%>
	<br>대박나세요 <%=money %><br>
<% } %>

</body>
</html>