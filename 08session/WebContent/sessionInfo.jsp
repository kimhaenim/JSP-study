<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page session = "true" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>技记沥焊</title>
</head>
<body>
技记ID: <%= session.getId() %><br>
<%
	time.setTime(session.getCreationTime());
%>
技记积己矫埃: <%= formatter.format(time) %><br>
<%
	time.setTime(session.getLastAccessedTime());
%>
弥辟立辟矫埃: <%= formatter.format(time) %>

<%	session.invalidate(); %><br>
技记辆丰

</body>
</html>