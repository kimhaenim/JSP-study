<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>to의 실행 결과</title>
</head>
<body>
이 페이지는 to.jsp가 생성한 것입니다.

<form action="<%=request.getContextPath()%>/view.jsp">

보고싶은 페이지 선택:
	<select name="code">
		<option value="A">A페이지</option>
		<option value="B">B페이지</option>
		<option value="C">C페이지</option>
	</select>

<input type="submit" value="이동">

</form>
</body>
</html>