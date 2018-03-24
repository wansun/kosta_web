<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/myhome.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%--
	1. 반응 형 웹 디자인이란 무엇입니까? 

		반응이 빠른 웹 디자인은 작은 전화기에서부터 대형 데스크탑에 이르기까지 
		모든 장치에 맞게 자동으로 조정되는 웹 사이트를 만드는 것에 관한 것입니다.
	
	2. 부트 스트랩은 빠르고 쉬운 웹 개발을위한 무료 프론트 엔드 프레임 워크입니다
 --%>
 <div class="container">	  
	  <div class="row header">
	  		<div class="col-sm-12">header영역</div>
	  </div>
	  <div class="row main">
		    <div class="col-sm-2 left">Left</div>
		    <div class="col-sm-8 center">Center</div>
		    <div class="col-sm-2 right">Right</div>
	  </div>
	   <div class="row footer">
	  		<div class="col-sm-12">footer영역</div>
	  </div>
</div>
 
</body>
</html>