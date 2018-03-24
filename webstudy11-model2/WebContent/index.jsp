<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>model2</title>
</head>
<body>
<%--                        Controller       Model
		client(browser) -> Dispatcher  <--> MockDAO
		                                         ㅣ
                             ㅣforward 방식으로 이동하여 응답
                            View
                              find_ok.jsp or find_fail.jsp                  
 --%>
<form action="DispatcherServlet">
<input type="hidden" name="command" value="find">
ID<input type="text" name="userId">
<input type="submit" value="검색">
</form>
<br><br>
<form action="DispatcherServlet" method="post">
<input type="hidden" name="command" value="register">
ID<input type="text" name="userId"><br>
NAME<input type="text" name="userName"><br>
<input type="submit" value="등록">
</form>
<br><br><br><br><br><br>
<hr>
<img src="model2.gif">
</body>
</html>