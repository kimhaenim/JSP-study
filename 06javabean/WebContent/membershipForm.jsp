<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 입력 폼</title>
</head>
<body>
<form action="processJoining.jsp" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" size="10"></td>
		<td>비밀번호</td>
		<td><input type="password" name="password" size="10"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="10"></td>
		<td>이메일</td>
		<td><input type="text" name="email" size="10"></td>
	</tr>
	<tr>
		<td colspan="4" align="center"><input type="submit" value="회원가입"></td>
	</tr>
</table>
</form>
</body>
</html>