<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	alert("<%= request.getParameter("userId")%>등록된 정보가 없습니다");
	location.href="index.jsp";
</script>
