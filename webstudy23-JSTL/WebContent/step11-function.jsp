<%@page import="model.PersonVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%-- jstl finction 선언부 --%>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%
	ArrayList<PersonVO> list=new ArrayList<PersonVO>();
	list.add(new PersonVO(" 아이유 ",22));
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
<title>jstl function</title>
</head>
<body>
<%-- jstl로 personList 의 size를 출력하고자 한다
		EL로 접근이 되는 메서드는 get과 is계열이다.
		즉 size() 메서드에 접근은 EL로는 불가하다.
		JSTL function 기능을 이용하면 된다.
 --%>
 리스트의 사이즈는 ${fn:length(personList) } 입니다.<br>
 리스트 첫번째 요소의 이름 길이 ${fn:length(personList[0].name) }<br>
 리스트 첫번째 요소의 이름 길이(trim 적용하여 공란제거) ${fn:length(fn:trim(personList[0].name)) }<br>
</body>
</html>






