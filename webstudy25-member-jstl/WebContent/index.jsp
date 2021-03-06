<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Model2 회원관리</title>
</head>
<body>
<%--		아이디로 회원검색은 
			findMemberById.jsp 에서 폼을 제공하고 
			아이디를 입력하면 
			findMemberById_ok.jsp에서 검색 정보 제공 
			findMemberById_fail.jsp에서 alert 후 index.jsp로 이동
			
			주소로 회원검색은 
			findMemberByAddress.jsp에서 select option으로 
			주소의 종류를 제공 , option을 선택하면 바로 
			검색결과를 리스트로 제공한다 
			findMemberByAddress_result.jsp에서 테이블 형식으로
			제공한다. 
			
			로그인 링크 클릭하면 
			login.jsp에서 로그인폼을 제공한다 
			아이디 패스워드가 데이터베이스에 있는 정보와
			일치하면 login_ok.jsp에서 아이유는 로그인 성공 
			실패하면 alert() 으로 로그인 실패 띄우고
			(login_fail.jsp)  
			다시 로그인 화면으로 보낸다 
		
			로그인 된 상태에서는 두가지 링크가 
			제공되는 데 하나는 카페가기( cafe.jsp ) 와 
			로그아웃 링크이다. 
				
			홈 ( index.jsp ) 에서는  로그인 상태에 따라 
			비로그인 상태이면 
			로그인하기 링크가 제공되고 
			로그인 상태이면 
			아이유님 로그인 
			카페가기 ( link )
			로그아웃 ( link )
			가 제공된다 	
 --%>
 <h3>Model2 회원관리</h3><br>
 <a href="${pageContext.request.contextPath}/member/findMemberById.jsp">아이디로 회원검색</a><br>
 <a href="dispatcher?command=findKindOfAddress">주소로 검색</a><br>
<c:choose>
	
		<c:when test="${sessionScope.memberDTO==null }">
			<a href="${pageContext.request.contextPath}/member/login.jsp">로그인</a><br>
			<a href="member/register.jsp">회원가입</a>
		</c:when>
		<c:otherwise>
			  ${sessionScope.memberDTO.name}님 로그인 <br>
			 <a href="dispatcher?command=logout">로그아웃</a><br>
			 <a href="${pageContext.request.contextPath }/member/cafe.jsp">카페가기</a><br>
			 <a href="${pageContext.request.contextPath }/member/update.jsp">회원정보수정</a>
		</c:otherwise>

 </c:choose>
</body>
</html>







