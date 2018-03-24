<%@page import="org.kosta.model.DataSourceManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.sql.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>model1 형식으로 dbcp를 테스트</title>
</head>
<body>
<%
		Connection oldCon=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","scott","tiger");
%>	기존 방식으로 생성한 컨넥션 : <%=oldCon.getClass()%>
<%
		oldCon.close(); //컨넥션을 소멸시킨다.
%>
<hr>
<%	
		DataSource dataSource=DataSourceManager.getInstance().getDataSource();
		Connection con=dataSource.getConnection();
%>	DBCP로 부터 빌려온 컨넥션 : <%=con.getClass() %>
<%
		con.close(); //컨넥션을 dbcp에 반납한다.
%>
<%-- 기존 방식으로 확보한 (생성한) 컨넥션과
		dbcp로부터 빌려온 컨넥션의 close() 메서드의 호출 방식은
		동일하지만
		실제 구상 클래스의 오버라이딩된 close() 의 구현은 다르므로
		기존 방식은 close 실행시 컨넥션이 소멸되는 것이고
		dbcp로부터 빌려온 컨넥션은 close() 실행시
		다시 컨넥션 풀로 사용한 컨넥션을 반납하는 것이다.
		-->다형성의 사례
--%>
</body>
</html>