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
<title>����</title>
</head>
<body>
<table>
<tr>
	<td>���̵�</td>
	<td><jsp:getProperty name="member" property="id"/></td>
	<td>��ȣ</td>
	<td><jsp:getProperty name="member" property="password"/></td>
</tr>
<tr>
	<td>�̸�</td>
	<td><jsp:getProperty name="member" property="name"/></td>
	<td>�̸���</td>
	<td><jsp:getProperty name="member" property="email"/></td>
</tr>
</table>
</body>
</html>