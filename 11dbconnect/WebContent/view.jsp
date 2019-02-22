<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.Board" %>
<%@ page import="board.BoardDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		String ID = null;
		if (session.getAttribute("ID")!=null){
			ID = (String) session.getAttribute("ID");
		}
		int BoardNumber = 0;
		if (request.getParameter("BoardNumber")!=null){
			BoardNumber = Integer.parseInt(request.getParameter("BoardNumber"));
		}
		if (BoardNumber ==0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='board.jsp'");
			script.println("</script>");
		}
		Board board = new BoardDAO().getBoard(BoardNumber);
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-hearder">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
			</ul>
			<%
				if(ID==null){
			%>
			<ul>
				<li>
					<a href="#" 
						 role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul>
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="insertForm.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%		
				}else{
			%>
			<ul>
				<li>
					<a href="#" class="dropdown-toggle"
						role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%		
				}
			%>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="5" style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><strong>글 제목</strong></td>
						<td colspan="4"><%=board.gettitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
					</tr>
					<tr>
						<td><strong>작성자</strong></td>
						<td colspan="2"><%=board.getID() %></td>
						<td><strong>작성일자</strong></td>
						<td colspan="2"><%=board.getDate() %></td>
					</tr>
					<tr>	
						<td><strong>내용</strong></td>
						<td colspan="4" style="min-height: 200px; text-align:left;"><%=board.getcontents().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="board.jsp" class="btn btn-primary">목록</a>
			<%
				if(ID != null && ID.equals(board.getID())){
			%>
					<a href="updateBoard.jsp?BoardNumber=<%=BoardNumber%>" class="btn btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?BoardNumber=<%=BoardNumber%>" class="btn btn-primary">삭제</a>
			<%	
				}
			%>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>