<%@page import="model.MemberVO"%>
<%@page import="model.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findMemberListByAddress</title>
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

tr:hover {
	background-color: #f5f5f5;
}
</style>
</head>
<body>


	<%
		String address = request.getParameter("memAddress");
		ArrayList<MemberVO> list = MemberDAO.getInstance().findMemberListByAddress(address);
		if (list.isEmpty()) {
	%>
	<script type="text/javascript">
		alert("<%=address%>에 사는 회원이 없습니다.");
		location.href="index.jsp";
	</script>
	<%}else{ %>
	<h3 style="color: blue;" ><%=address %>에 사는 회원명단</h3><br><br>
	<table>
		<thead>
			<tr>
				<td>순번</td><td>아이디</td><td>이름</td>
			<tr>
		</thead>
		<tbody>
			<%for(int i=0;i<list.size();i++) { %>
			<tr>
				<td><%=i+1%></td>
				<td><%=list.get(i).getId()%></td>
				<td><%=list.get(i).getName()%></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	<%} %>
</body>
</html>