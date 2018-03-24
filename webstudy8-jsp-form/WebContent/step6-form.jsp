<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step6-form</title>
</head>
<body>
<form action="step6-action.jsp">
점수<input type="number" name="score" max="100" min="0">
<input type="submit" value="전송"> 
</form>
<%-- step6.form 에서 0~100점 사이의 점수를 입력해서 전송하면(step6-action.jsp)
     90점 이상은 A학점 (JSP)
     50점 이상은 B학점 (JSP)
     50점 미만은 F학점 재수강페이지로 이동합니다.(javascript alert)(확인 누르면 F-page.jsp 이동)
     javascript   location.href="a.jsp";
 --%>
</body>
</html>