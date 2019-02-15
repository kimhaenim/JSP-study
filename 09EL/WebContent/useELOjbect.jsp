<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setAttribute("name","김해님");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL Object</title>
</head>
<body>
요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성 : ${requestScope.name}<br>
code 파라미터 : ${param.code}

</body>
</html>