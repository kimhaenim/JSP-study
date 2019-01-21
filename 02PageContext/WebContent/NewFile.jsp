<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>page context 기본 객체</title>
</head>
<body>
request 기본 객체와 pageContext.getRequest()의 동일여부:
<%= request == pageContext.getRequest() %>
<br>
pageContext.getOut() 메서드를 사용한 데이터 출력:
<% pageContext.getOut().println("안녕하세요!"); %>


</body>
</html>