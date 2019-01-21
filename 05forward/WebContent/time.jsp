<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
페이지 C에서 현재시각을 불러옵니다.
	<%
	Calendar cal = (Calendar)request.getAttribute("time");
	%>
	현재 시간은 <%= cal.get(Calendar.HOUR)%>시
	<%= cal.get(Calendar.MINUTE)%>시
	<%= cal.get(Calendar.SECOND)%>초 입니다.
</body>
</html>