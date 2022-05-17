<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.*"%>
<%@page import="dao.ChatObj"%>
<%@page import="dao.ChatDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


	request.setCharacterEncoding("UTF-8");
	String ctitle = request.getParameter("title");
	String cmsg = request.getParameter("msg");
    String csendid =(String) session.getAttribute("id");
    String crecid = request.getParameter("crecid");
	
	ChatDAO dao = new ChatDAO();
	int code = dao.send(csendid, crecid, ctitle, cmsg);
	
	if (code == 1){%>
		<script>
			alert("메세지 전송완료!");
			
		</script>
	<% response.sendRedirect("/main.jsp");} else {%>
		<script>
		alert("메세지전송 실패!");
		history.back();
		</script>
	<% }


%>
</body>
</html>