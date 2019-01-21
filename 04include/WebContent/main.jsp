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
main.jsp에서 생성한 내용.

<jsp:include page="sub.jsp" flush="true"/>

include 이후의 내용.

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td colspan="2">
		<!-- 모든 페이지에서 똑같은 상단 메뉴 HTML 코드 -->
			<jsp:include page="top.jsp" flush="true"/>	
	</td>
</tr>
<tr>
	<td width = "100" valign="top">
		<!-- 페이지 마다 다른 내용 부분 -->
			<jsp:include page="left.jsp" flush="true"/>
	</td>
	<td width="300" valign="top">
		<!-- 내용부분 : 시작 -->
			레이아웃 1
			<br><br><br>
	</td>
</tr>
<tr>
	<td colspan="2">
		<!-- 모든 페이지에서 똑같은 하단 메뉴 HTML 코드 -->
			<jsp:include page="bottom.jsp" flush="true"/>
	</td>
</tr>
</table>

<br>

<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>제품번호</td> <td>XXXX</td>
</tr>
<tr>
	<td>가격</td> <td>10,000원</td>
</tr>
</table>

<jsp:include page="infoSub.jsp" flush="true">
	<jsp:param name="type" value="A"/>
</jsp:include>

include 전 name 파라미터 값: <%=request.getParameter("name") %>

<hr>

<jsp:include page="body_sub.jsp" flush="true">
	<jsp:param name="name" value="김해님"/>
</jsp:include>	
<hr>

include 후 name 파라미터 값 : <%=request.getParameter("name") %>

</body>
</html>