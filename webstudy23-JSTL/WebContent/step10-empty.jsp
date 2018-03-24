<%@page import="model.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%
	ArrayList<PersonVO> list=new ArrayList<PersonVO>();
	list.add(new PersonVO("아이유",22));
	list.add(new PersonVO("김연아",28));
	list.add(new PersonVO("bts",26));	
	list.add(new PersonVO("조민경",19));
	list.add(new PersonVO("강동원",32)); 
	session.setAttribute("personList", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl empty</title>
</head>
<body>
<%--
		배열, 리스트 요소가 있는지를 체크한다.
		empty
		!empty
 --%>
<c:if test="${empty sessionScope.personList }">
		personList 에 사람이 없어요!
</c:if>
<hr>
<c:if test="${!empty sessionScope.personList }">
		personList 에 사람이 있어요!
</c:if>
</body>
</html>