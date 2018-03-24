<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script type="text/javascript">

function checkForm(){
	var c=document.registerForm;
	if(c.registerPass.value.trim().length==""){
		alert("패스워드를 입력하세요.");
			c.registerPass.focus();
		return false;
	}if(c.confirmPass.value.trim().length==""){
		alert("패스워드 확인을 입력하세요");
	
		c.confirmPass.focus();
		return false;
	}if(c.registerPass.value.trim().length!=c.confirmPass.value.trim().length){
		alert("패스워드와 패스워드 확인이 일치하지 않습니다.");	
		c.confirmPass.focus();
		return false;
	}if(c.registerName.value.trim().length==""){
		alert("이름을 입력하세요");	
		c.registerName.focus();
		return false;
	}if(c.registerAddress.value.trim().length==""){
		alert("주소를 입력하세요");
		c.registerAddress.focus();
		return false;
	}
}
function checkId(){
	var str=document.registerForm.registerId.value;
	
	if(str==""){
		alert("아이디를 입력하세요.");
	}else{
		open("dispatcher?command=idcheck&id="+str+,"popup","width=200,height=200,top=150,left=400");
	}
}
</script>
</head>
<body>
<a href="index.jsp" style="color: orange;">홈</a><hr>
<h3>회원가입</h3>
<form action="dispatcher" name="registerForm" method="post" onsubmit="return checkForm()">
<input type="hidden" name="command" value="register">
아이디 : <input type="text" name="registerId">
<input type="button" value="중복확인" onclick="checkId()"><br>
패스워드 :  <input type="text" name="registerPass"><br>
패스워드 확인 : <input type="text" name="confirmPass"><br>
이름 :  <input type="text" name="registerName"><br>
주소 :  <input type="text" name="registerAddress"><br>
<input type="hidden" name="flag" value="">
<input type="submit" value="회원가입">
</form>
</body>
</html>