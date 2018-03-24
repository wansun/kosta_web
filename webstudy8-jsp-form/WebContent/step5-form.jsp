<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkbox</title>
<script type="text/javascript">
	function checkForm(){
		var fc=document.foodForm.food;
		var flag=false;
		
		for(var i=0;i<fc.length;i++){
			if(fi[i].checked){
				flag=true;
				break;
			}
		}
		if(flag==false)
			alert("음식을 선택하세요");
		return flag;
	}
</script>
</head>
<body>
<% ArrayList<String> list=new ArrayList<String>();
	list.add("치킨");
	list.add("도다리");
	list.add("양꼬치");
%>
<form action="step5-action.jsp" method="post" name="foodForm" onsubmit="return checkForm()">
	
	<%for(int i=0;i<list.size();i++){ %>
	 <input type="checkbox" name="food" value="<%=list.get(i)%>"><%=list.get(i)%><br>
	<%} %>
	<input type="submit" value="주문">
</form>
<%-- checkbox 동적으로 생성한다.

	 step5-action.jsp 에서
	 선택한 음식을 다음과 같이 보여준다
	 
	 테이블 형식으로
	 NO 메뉴명
	 1  치킨
	 2  양꼬치
	 
	 자바스크립트로 폼검증
 --%>
</body>
</html>