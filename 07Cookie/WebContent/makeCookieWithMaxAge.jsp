<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.net.URLDecoder" %>
<%
	Cookie cookie = new Cookie("oneh", "1time");
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű ��ȿ �ð� ����</title>
</head>
<body>
��ȿ�ð��� 1�ð��� oneh ��Ű ����
<br>[��Ű���]<br>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length>0){
		for(int i=0; i<cookies.length; i++){
	
%>
		<%=cookies[i].getName() %>=
		<%=URLDecoder.decode(cookies[i].getValue(), "utf-8") %><br>
<%
	}
}else{
	%>
	��Ű�� �������� �ʽ��ϴ�.
	<% 
}
%>
</body>
</html>