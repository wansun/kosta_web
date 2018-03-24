<%@page import="java.util.ArrayList"%>
<%@page import="model.PagingBean"%>
<%@page import="model.PersonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	PersonVO pvo=new PersonVO("아이유",22);
	request.setAttribute("person", pvo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl set을 이용한 변수 선언 및 할당</title>
</head>
<body>
<c:set value="${requestScope.person }" var="p"/>
이름  : ${p.name } / 나이 : ${p.age }
<hr><hr><hr><hr><hr><hr><hr>
<%
	ArrayList<PersonVO> list=new ArrayList<PersonVO>();
	list.add(new PersonVO("아이유",22));
	list.add(new PersonVO("김연아",28));
	list.add(new PersonVO("bts",26));	
	list.add(new PersonVO("조민경",19));
	list.add(new PersonVO("강동원",32));
	session.setAttribute("personList", list);
%>
<c:set value="0" var="totalAge"/>
	<c:forEach items="${sessionScope.personList }" var="per">
		<c:set var="totalAge" value="${totalAge+per.age }"/>
	</c:forEach>
	나이총합 : ${totalAge}
	<hr>
	<%-- 
		25세 이상만 출력
		1  김연아  28
		2  bts   26
		3  강동원  32
	 --%>
	 <c:set value="0" var="rownum"/>
	 <c:forEach items="${sessionScope.personList }" var="p">	 	
	 		<c:if test="${p.age>=25 }">
	 			<c:set var="rownum" value="${rownum+1 }"/>
	 			${rownum}  ${p.name} ${p.age }<br>
	 		</c:if>	 	
	 </c:forEach>
</body>
</html>














