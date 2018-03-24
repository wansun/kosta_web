<%@page import="model.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Person> list = new ArrayList<Person>();
	list.add(new Person("송헤교",24));
	list.add(new Person("전지헌",44));
	list.add(new Person("김태희",66));
	list.add(new Person("조보아",22));
	list.add(new Person("원빈",21));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table 에 JSP 적용</title>
<style>
table {
    border-collapse: collapse;
    width: 20%;
}

th, td {
    padding: 8px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>
</head>
<%-- 번호     이름      나이
      1   홍길동     33
      2   아무개     22 
 --%>
<body>
<table>
	<thead>
		<tr>
			<td>번호</td><td>이름</td><td>나이</td>
		</tr>
	</thead>
	<tbody>
		<%for(int i=0;i<list.size();i++){ %>
		<tr>
			<td><%=i+1 %></td>
			<td><%=list.get(i).getName() %></td>
			<td><%=list.get(i).getAge() %></td>
		</tr>
		<%} %>
	</tbody>
</table>
</body>
</html>