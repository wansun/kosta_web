<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="home.css">
<script type="text/javascript">
	function confirmLogout() {
			var flag=confirm("로그아웃 하시겠습니까?");		
			if(!flag){
				
				return false;
			}
		
	}
</script>
<%
	String name=(String)session.getAttribute("loginName");
	if(name!=null){%>
<div><a href="index.jsp">홈로고</a> <%=name%> <a href="dispatcher?command=myInfo">마이페이지</a>  <a href="dispatcher?command=logout" onclick="return confirmLogout()">로그아웃</a></div><hr>
<%	}else{ %>
<div><a href="index.jsp">홈로고</a>  <a href="login.jsp">로그인</a>  <a href="register.jsp">회원가입</a></div><hr>
<%} %>
