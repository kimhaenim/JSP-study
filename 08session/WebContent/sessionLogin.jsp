<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id!=null && id.equals(password)){
		session.setAttribute("MEMBERID", id);
		%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
alert("�α��ο� �����߽��ϴ�!");
</script>
�α��ο� �����߽��ϴ�.
<form action="sessionLogout.jsp" method="post">
<input type="submit" value="�α׾ƿ�">
</form>
</body>
</html>
<%
	}else{
%>
<script>
alert("�α��ο� �����߽��ϴ�. id�� ��й�ȣ�� �����ؾ� �α��� �����մϴ�.");
history.go(-1);
</script>
<%
	}
%>