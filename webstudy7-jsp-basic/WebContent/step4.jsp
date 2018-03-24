<%@page import="model.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<Person> list = new ArrayList<Person>();
	list.add(new Person("송용준",29));
	list.add(new Person("이준규",28));
	list.add(new Person("이상욱",29));
	list.add(new Person("백설희",25));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>table 에 jsp 적용</title>
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
<body>
<table>
	<thead>
		<tr>
			<th>번호</th><th>이름</th><th>나이</th>
		</tr>
	</thead>
	<tbody>
		<%for(int i=0;i<list.size();i++){%> 
		<tr>
			<td><%=i+1%></td>
			<td><%=list.get(i).getName()%></td>
			<td><%=list.get(i).getAge() %></td>
		</tr>
		<% } %>
	</tbody>
</table>
</body>
</html>





