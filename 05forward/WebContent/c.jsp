<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�� �������� <b><font size="5">C</font></b>�Դϴ�.
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time",cal);
%>
<jsp:forward page="time.jsp"/>
</body>
</html>