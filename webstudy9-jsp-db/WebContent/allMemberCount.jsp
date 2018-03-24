<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user="scott";
	String pass="tiger";
	Connection con=DriverManager.getConnection(url, user, pass);
	String sql="select count(*) from member";
	PreparedStatement pstmt=con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	int count=0;
	if(rs.next())
		count=rs.getInt(1);
	rs.close();
	pstmt.close();
	con.close();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체회원수</title>
</head>
<body>
	<h3>전체 회원수는 <%=count %>명입니다.</h3>

</body>
</html>