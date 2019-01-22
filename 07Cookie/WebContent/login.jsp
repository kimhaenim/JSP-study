<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "util.Cookies" %>
<%@ page import = "java.net.URLDecoder" %>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	if(id != null && id.equals(pw)){
		//ID와 pw가 같으면 로그인 성공으로 판단
		response.addCookie(Cookies.createCookie("A", id, "domain", "/07Cookie", -1));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 성공</title>
</head>
<body>
로그인에 성공했습니다.
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
	쿠키가 존재하지 않습니다.
	<% 
}
%>
<form action="loginCheck.jsp" method="post">
<input type="submit" value="로그인체크">
</form>
</body>
</html>
<%
	}else{
%>
<script>
alert("로그인실패");
history.go(-1);
</script>
<%
}
%>