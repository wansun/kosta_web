<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step4-action</title>
</head>
<body>
<%
	String way=request.getParameter("subway");
	int sub=Integer.parseInt(way);
	if(sub<5){
%>
	코레일 <%=sub%>호선 입니다.
	<%}else{ %>
	도시철도 <%=sub%>호선 입니다.
	<%} %>
	<%-- *** 강사님이 한것 ***
		<%
			int line=Integer.parseInt(request.getParameter("subway"));
			String company=null;
			if(line<5)
				company="코레일";
			else
				company="도시철도";
		 %>		
			<%=company%> <%=line%> 호선입니다.
	 --%>
</body>
</html>