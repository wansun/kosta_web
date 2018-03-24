<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디중복확인</title>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<script type="text/javascript">
	var of=opener.document.registerForm;
	of.flag.value="${param.id}";	
	function closeWindow(){			
		of.password.focus();			
		self.close();
	}
</script>
</head>
<body bgcolor="yellow" onunload="closeWindow()">
	${param.id }는 사용가능!
	<br>
	<br>
	<input type="button" onclick="closeWindow()" value="확인">
	
</body>
</html>




















