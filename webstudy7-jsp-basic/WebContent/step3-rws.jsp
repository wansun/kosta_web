<%@page import="model.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP를 이용해 ArrayList 출력</title>
<%
	ArrayList<String> list=new ArrayList<String>(); 
	list.add("피자"); list.add("족발");
	list.add("치킨"); list.add("맥주");
	list.add("광어");
	
	Person p=new Person("아이유",24);
%>
</head>
<body>
<% for(int i=0;i<list.size();i++){%>
<%=i+1%>.&nbsp;<%=list.get(i)%><br>
<%} %><hr>
이름 : <%=p.getName()%>&nbsp;/&nbsp;나이 : <%=p.getAge()%>
<%-- 1. 피자
	 2. 족발
	 3. 치킨
	 4. 맥주
	 5. 광어 
 --%>
 
 <%-- 이름 : 아이유  / 나이 : 24세 --%>
</body>
</html>