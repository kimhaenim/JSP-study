<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% session.invalidate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃</title>
</head>
<body>
로그아웃하였습니다. 다시 로그인 페이지로 돌아갑니다.<br>
<jsp:forward page="sessionLoginForm.jsp"/>
</body>
</html>