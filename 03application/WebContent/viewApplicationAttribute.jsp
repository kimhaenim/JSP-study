<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>扁夯 按眉 加己 焊扁</title>
</head>
<body>
<%
	Enumeration <String> attrEnum = application.getAttributeNames();
	while(attrEnum.hasMoreElements()){
		String name = attrEnum.nextElement();
		Object value = application.getAttribute(name);
%>
	application 加己 : <b><%=name%></b>=<%=value%><br>
	<%
}
	%>
</body>
</html>