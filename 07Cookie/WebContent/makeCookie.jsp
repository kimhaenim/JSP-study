<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("김해님","utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키생성</title>
</head>
<body>
<form action="viewCookies.jsp" method="post">
	<%=cookie.getName() %>쿠키의 값 = "<%=cookie.getValue() %>"
	쿠키를 생성하였습니다. 
<input type ="submit" value="조회하기">
</form>
</body>
</html>