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
<title>Cookies�� ����� ��Ű ����.</title>
</head>
<body>
<form action="readCookieUsingCookies.jsp" method="post">
Cookies�� ����� ��Ű ����.
<input type="submit" value="�б�">
</form>
</body>
</html>