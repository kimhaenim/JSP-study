<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main</title>
</head>
<body>
main.jsp���� ������ ����.

<jsp:include page="sub.jsp" flush="true"/>

include ������ ����.

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
		<!-- ��� ���������� �Ȱ��� ��� �޴� HTML �ڵ� -->
			<jsp:include page="top.jsp" flush="true"/>	
	</td>
</tr>
<tr>
	<td width = "100" valign="top">
		<!-- ������ ���� �ٸ� ���� �κ� -->
			<jsp:include page="left.jsp" flush="true"/>
	</td>
	<td width="300" valign="top">
		<!-- ����κ� : ���� -->
			���̾ƿ� 1
			<br><br><br>
	</td>
</tr>
<tr>
	<td colspan="2">
		<!-- ��� ���������� �Ȱ��� �ϴ� �޴� HTML �ڵ� -->
			<jsp:include page="bottom.jsp" flush="true"/>
	</td>
</tr>
</table>

<br>

<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>��ǰ��ȣ</td> <td>XXXX</td>
</tr>
<tr>
	<td>����</td> <td>10,000��</td>
</tr>
</table>

<jsp:include page="infoSub.jsp" flush="true">
	<jsp:param name="type" value="A"/>
</jsp:include>

include �� name �Ķ���� ��: <%=request.getParameter("name") %>

<hr>

<jsp:include page="body_sub.jsp" flush="true">
	<jsp:param name="name" value="���ش�"/>
</jsp:include>	
<hr>

include �� name �Ķ���� �� : <%=request.getParameter("name") %>

</body>
</html>