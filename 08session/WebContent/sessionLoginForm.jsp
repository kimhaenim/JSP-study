<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.setAttribute("MEMBERID","kimhaenim");
	session.setAttribute("NAME", "haenim");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login form</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/sessionLogin.jsp" method="post">

���̵�� ��й�ȣ�� �����ϰ� �Է����ּ���.<br>
���� ���ǿ� ����� ���̵�: kimhaenim<br>
���̵�<input type="text" name="id" size="10">
��ȣ<input type="password" name="password" size="10">
<input type="submit" value="login">
</form>
</body>
</html>