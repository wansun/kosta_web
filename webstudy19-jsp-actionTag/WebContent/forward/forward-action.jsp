<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward-action.jsp</title>
</head>
<body>
<%	
		String name=request.getParameter("userName");
		int age=Integer.parseInt(request.getParameter("userAge"));
		if(age>=20){
%>  
<%=name %>님 <%=age %>세 성입니다.
<%  }else{
	// jsp actiontag 의 param으로 한글 데이터를 전달할 떄는
	// 아래와 같은 encoding 작업이 필요하다.
		String m=URLEncoder.encode("배고파","utf-8");
%>
	<jsp:forward page="child-view.jsp">
		<jsp:param value="<%=m %>" name="message"/>
	</jsp:forward>
<%} %>
</body>
</html>