<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kosta179 home</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/css/myhome.css"> --%>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%--
		부트스트랩 Grid로 레이아웃 설정 후 
		jstl <c:import url="" />
 --%>
 <div class="container">
 	<div class="row header"align="right">
 		<div class="col-sm-12"><c:import url="/template/header.jsp"></c:import></div>
 	</div><br><br>
 	<div class="row main">
 		<div class="col-sm-12 center" >
 		<%-- 변경 될 메인 url 정보를 컨트롤러에서 제공한다. --%>
 			<c:import url="${url }"></c:import>
 		</div>
 	</div>
 </div>
</body>
</html>