<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>page context �⺻ ��ü</title>
</head>
<body>
request �⺻ ��ü�� pageContext.getRequest()�� ���Ͽ���:
<%= request == pageContext.getRequest() %>
<br>
pageContext.getOut() �޼��带 ����� ������ ���:
<% pageContext.getOut().println("�ȳ��ϼ���!"); %>


</body>
</html>