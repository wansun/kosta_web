<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<script type="text/javascript">
	var of=opener.document.registerForm;
	of.flag.value="<%=request.getParameter("registerId")%>";
	function closeWindow(){
		of.registerPass.focus();
		self.close();
	}
</script>
</head>
<body bgcolor="yellow" onunload="closeWindow()">
<%=request.getParameter("registerId") %> 는 사용이 가능합니다.
<br>
<br>
<input type="button" onclick="closeWindow()" value="확인">
</body>
</html>