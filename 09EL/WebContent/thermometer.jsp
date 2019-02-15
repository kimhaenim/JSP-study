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
<title>온도 변환 예제</title>
</head>
<body>
	${t.setCelsius('서울',27.3) }
	서울 온도: 섭씨 ${t.getCelsius('서울')}도/ 화씨 ${t.getFahrenheit('서울') }
	<br>
	정보: ${t.info } 
</body>
</html>