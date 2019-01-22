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
alert("로그인에 성공했습니다!");
</script>
로그인에 성공했습니다.
<form action="sessionLogout.jsp" method="post">
<input type="submit" value="로그아웃">
</form>
</body>
</html>
<%
	}else{
%>
<script>
alert("로그인에 실패했습니다. id와 비밀번호가 동일해야 로그인 가능합니다.");
history.go(-1);
</script>
<%
	}
%>