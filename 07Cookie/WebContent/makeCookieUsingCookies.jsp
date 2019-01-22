<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("name","haenim"));
	response.addCookie(Cookies.createCookie("id","kimhaenim"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookies를 사용해 쿠키 생성.</title>
</head>
<body>
<form action="readCookieUsingCookies.jsp" method="post">
Cookies를 사용해 쿠키 생성.
<input type="submit" value="읽기">
</form>
</body>
</html>