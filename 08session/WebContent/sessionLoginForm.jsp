<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("MEMBERID","kimhaenim");
	session.setAttribute("NAME", "haenim");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login form</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/sessionLogin.jsp" method="post">

아이디와 비밀번호를 동일하게 입력해주세요.<br>
현재 세션에 저장된 아이디: kimhaenim<br>
아이디<input type="text" name="id" size="10">
암호<input type="password" name="password" size="10">
<input type="submit" value="login">
</form>
</body>
</html>