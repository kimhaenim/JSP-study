<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.Cookies" %>
<%@ page import = "java.net.URLDecoder" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	if(id != null && id.equals(pw)){
		//ID�� pw�� ������ �α��� �������� �Ǵ�
		response.addCookie(Cookies.createCookie("A", id, "domain", "/07Cookie", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ����</title>
</head>
<body>
�α��ο� �����߽��ϴ�.
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
<form action="loginCheck.jsp" method="post">
<input type="submit" value="�α���üũ">
</form>
</body>
</html>
<%
	}else{
%>
<script>
alert("�α��ν���");
history.go(-1);
</script>
<%
}
%>