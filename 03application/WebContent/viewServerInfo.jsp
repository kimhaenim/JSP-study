<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>서버정보 출력</title>
</head>
<body>
서버정보 : <%= application.getServerInfo() %><br>
서블릿 규약 메이저 버전: <%= application.getMajorVersion() %><br>
서블릿 규약 마이너 버전: <%= application.getMinorVersion() %><br>
==> 서블릿  <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> 버전을 지원하는구나!
</body>
</html>