<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
body_sub에서 파라미터 값 : <%=request.getParameter("name") %>
<br>
<ul>
<%
	String[] names = request.getParameterValues("name");
	for (String name : names){
%>
<li> <%=name %></li>
<% 
	}
%>
</ul>
</body>
</html>