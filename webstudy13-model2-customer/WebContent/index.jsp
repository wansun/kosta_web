<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
<%--
		index -- Dispatcher -- HandlerMapping -- Controller 
												FindCustomerByIdController -- CustomerDAO
					l														  FindCustomerById(id):CustomerDTO
                  forward
                  findCustomerById_ok.jsp
                  or
                  findCustomerById_fail.jsp
 --%>
<form action="dispatcher" method="get" >
<input type="hidden" name="command" value="find"> <%--구분 역할,히든은 개발자만 알수있음--%>
고객아이디 <input type="text" name="userId" required="required">
<input type="submit" value="검색">
</form>
<br><br><br>
<form action="dispatcher" method="post">
<input type="hidden" name="command" value="register">
아이디<input type="text" name="id" required="required"><br>
이름<input type="text" name="name" required="required"><br>
주소<input type="text" name="address" required="required"><br>
<input type="submit" value="등록">
</form>
<%--   index -- DispatcherServlet -- HandlerMapping--Controller--CustomerDAO
						l									     register(dto)
						l	redirect								     
					register_result.jsp
 --%>
</body>
</html>