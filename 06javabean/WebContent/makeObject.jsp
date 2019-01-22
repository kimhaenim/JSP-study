<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	member.setId("kimhaenim");
	member.setName("김해님");
%>
<jsp:forward page="/useObject.jsp"/>
</body>
</html>