<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <jsp:foward> 액션 태그를 실행하면 생성했던 출력 결과는 모두 제거된다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page ="to.jsp"/>

</body>
</html>