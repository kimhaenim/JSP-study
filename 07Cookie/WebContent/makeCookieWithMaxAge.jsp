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
<title>쿠키 유효 시간 설정</title>
</head>
<body>
유효시간이 1시간인 oneh 쿠키 생성
<br>[쿠키목록]<br>
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
</body>
</html>