<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="EL.Thermometer" %>

<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�µ� ��ȯ ����</title>
</head>
<body>
	${t.setCelsius('����',27.3) }
	���� �µ�: ���� ${t.getCelsius('����')}��/ ȭ�� ${t.getFahrenheit('����') }
	<br>
	����: ${t.info } 
</body>
</html>