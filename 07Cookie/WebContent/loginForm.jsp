<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("name","kimhaenim"));
	response.addCookie(Cookies.createCookie("id","kimhaenim"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 폼</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/login.jsp" method="post">
아이디<input type="text" name="id" size="10">
암호<input type="password" name="password" size="10">
<input type="submit" value="login">
</form>
</body>
</html>