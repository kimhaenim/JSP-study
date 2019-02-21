<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="board.BoardDAO" %>
<%@ page import ="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" class="board.Board" scope="page" />
<jsp:setProperty name="board" property="title"/>
<jsp:setProperty name="board" property="contents"/>
<% System.out.println("writeAction page"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	String ID = null;
	if(session.getAttribute("ID")!=null){
		ID = (String)session.getAttribute("ID");
	}
	if(ID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}else{
		if(board.gettitle()==null || board.getcontents()==null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}else{
					BoardDAO boardDAO = new BoardDAO();
					int result = boardDAO.write(board.gettitle(), ID, board.getcontents());
					
					if(result == -1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다.')");
						script.println("history.back()");
						script.println("</script>");
					}else{
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'board.jsp'");
						script.println("</script>");
					}
				}
				
	}
%>
</body>
</html>