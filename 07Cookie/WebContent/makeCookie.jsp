<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("���ش�","utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű����</title>
</head>
<body>
<form action="viewCookies.jsp" method="post">
	<%=cookie.getName() %>��Ű�� �� = "<%=cookie.getValue() %>"
	��Ű�� �����Ͽ����ϴ�. 
<input type ="submit" value="��ȸ�ϱ�">
</form>
</body>
</html>