<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű��ȿ�ð�����</title>
</head>
<body>
��ȿ�ð��� 1�ð��� oneh��Ű ����


</body>
</html>