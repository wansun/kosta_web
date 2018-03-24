<%@page import="model.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ArrayList<PersonVO> list=new ArrayList<PersonVO>();
	list.add(new PersonVO("변태섭",22));
	list.add(new PersonVO("황명아",16));
	list.add(new PersonVO("한샘",24));
	request.setAttribute("personList", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach ArrayList</title>
<style>
table {
	border-collapse: collapse;
	width: 20%;
}

th, td {
	padding: 10px;
	border-bottom: 4px solid black;
}

</style>
</head>
<body>

<table>
<%--
		forEach 속성
		items : 배열 또는 컬렉션
		var : 요소들을 담을 변수
		varStatus : count 와 index가 있다
							count는 1부터 시작, index는 0부터 시작
 --%>
	<c:forEach items="${requestScope.personList }" var="f" varStatus="info">
		<tr >
			<td>순번 : ${info.count }</td>
			<td>이름 : ${f.name }</td>
			<td>나이 : ${f.age }</td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>