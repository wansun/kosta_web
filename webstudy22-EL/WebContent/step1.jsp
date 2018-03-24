<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL (Expression Language )</title>
</head>
<body>
<% //컨트롤러에서 공유했다고 가정한다.
	request.setAttribute("userName", "김태리");
	request.setAttribute("car",new CarVO("K5","검정",100));
	ArrayList<CarVO> list=new ArrayList<CarVO>();
	list.add(new CarVO("sm5","빨강",200));
	request.setAttribute("list", list);
	HashMap<String,CarVO> map=new HashMap<String,CarVO>();
	map.put("mycar", new CarVO("sm7","파랑",300));
	session.setAttribute("carMap", map);
%>
1. 기존방식으로 표현<br>
<%=request.getAttribute("userName") %><br>
<% 
	CarVO car=(CarVO)request.getAttribute("car");
%>
모델명<%=car.getModel() %><br>
<%
 	@SuppressWarnings("unchecked") 
	ArrayList<CarVO> carList=(ArrayList<CarVO>)request.getAttribute("list");
%>
리스트 첫번째 요소 모델명<%=carList.get(0).getModel() %><br>
Map의 key가 mycar인 value의 모델명 : 
<%
	@SuppressWarnings("unchecked")
	HashMap<String,CarVO> rMap=(HashMap<String,CarVO>)session.getAttribute("carMap");
%><%=rMap.get("mycar").getModel() %> 
<br><br>
2. EL <br> 
${requestScope.userName} ${userName}<br>
모델명 : ${requestScope.car.model }<br>
가격 : ${car.price}<br>
리스트 첫번째 요소 모델명 : ${requestScope.list[0].model}<br>
Map의 key가 mycar인 value의 모델명 : ${sessionScope.carMap.mycar.model }
<br><br>
<a href="step2-param.jsp?command=testEL&userName=유바롬&userAge=28">step2로 이동</a>
</body>
</html>