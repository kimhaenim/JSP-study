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
<title>Cookie ���</title>
</head>
<body>
	name ��Ű = <%=cookies.getValue("name") %><br>
		<% if (cookies.exists("id")){ %>
				id ��Ű = <%= cookies.getValue("id") %><br>
		<% } %>
</body>
</html>