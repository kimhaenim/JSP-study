<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request" class="member.MemberInfo"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�λ縻</title>
</head>
<body>
<%= member.getName() %>(<%=member.getID() %>)ȸ����
�ȳ��ϼ���.
</body>
</html>