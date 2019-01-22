<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="member.MemberInfo"/>
<jsp:setProperty name="member" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>가입</title>
</head>
<body>
<table>
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="member" property="id"/></td>
	<td>암호</td>
	<td><jsp:getProperty name="member" property="password"/></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty name="member" property="name"/></td>
	<td>이메일</td>
	<td><jsp:getProperty name="member" property="email"/></td>
</tr>
</table>
</body>
</html>