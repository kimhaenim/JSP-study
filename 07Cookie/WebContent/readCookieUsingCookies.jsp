<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.Cookies" %>
<% 
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie 사용</title>
</head>
<body>
	name 쿠키 = <%=cookies.getValue("name") %><br>
		<% if (cookies.exists("id")){ %>
				id 쿠키 = <%= cookies.getValue("id") %><br>
		<% } %>
</body>
</html>