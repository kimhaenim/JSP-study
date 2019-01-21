<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그 메시지 기록</title>
</head>
<body>
	<%
	application.log("로그 메시지 기록");
	%>
	로그 메시지를 기록합니다.
</body>
</html>