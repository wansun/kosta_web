<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.PersonVO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <% 
    LinkedHashMap<String,PersonVO> map=
    new LinkedHashMap<String, PersonVO>();
    map.put("one",new PersonVO("아이유",22));
    map.put("tow",new PersonVO("김태리",28));
    map.put("three",new PersonVO("변태섭",30));
    request.setAttribute("imap", map);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl forEach Map</title>
</head>
<body>
1. scriptlet 방식으로 imap 의 key value를 모두 출력 <br><br>
<%
   @SuppressWarnings("unchecked") 
	LinkedHashMap<String,PersonVO> map1=(LinkedHashMap<String,PersonVO> )request.getAttribute("imap");
	Set<String >set=map1.keySet();
	Iterator<String> it=set.iterator();
	while(it.hasNext()){
		String key=it.next();	
%>
key : <%=key %>  value:<%=map1.get(key) %>  <br>
<%
	}
%>
<hr>
<hr>
<hr>
2. jstl forEach 방식으로 iap의 key value를 모두 출력 <br><br>
<c:forEach items="${requestScope.imap }" var="person">
	key : ${person.key }            value :${person.value } <br>
</c:forEach>
</body>
</html>