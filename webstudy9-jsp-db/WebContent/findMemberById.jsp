<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "scott";
	String pass = "tiger";
	Connection con = DriverManager.getConnection(url, user, pass);
	String sql = "select name,address from member where id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	//client 가 전송한 id를 받는다
	String memId=request.getParameter("memId");
	pstmt.setString(1, memId);
	ResultSet rs = pstmt.executeQuery();
	String name=null;
	String address=null;
	if(rs.next()){
		name=rs.getString(1);
		address=rs.getString(2);
	}
	rs.close();
	pstmt.close();
	con.close();
%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>회원검색</title>
</head>
<body>
<%if(name!=null){ %>
<%=memId %>아이디 / 회원정보 - 이름 : <%=name %> , 주소 : <%=address %>
<%}else { %>
	<script type="text/javascript">
		alert("<%=memId%>아이디에 해당하는 회원이 없습니다.!!");
		location.href="index.jsp";
	</script>
<%} %>
</body>
</html>