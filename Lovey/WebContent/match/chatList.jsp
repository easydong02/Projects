<%@page import="dao.ChatObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ChatDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITEMS</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<jsp:include page = "../header.jsp" />
	

	
		<div class = "container">
			<h1 class = "display-3">채팅 목록</h1>
		</div>
		
		<div>
			<div class = "container">
			
				<div class = "row" align = "center">
				<table class="table">
			  <thead>
			  	<tr>
			      <th scope="col">보낸사람</th>
			      <th scope="col">내용</th>
			      <th scope="col">보낸시간</th>
			      <th scope="col">채팅보내기</th>
			      
			    </tr>

					<%
					 	ArrayList<ChatObj> chats = (new ChatDAO()).getChatList((String)session.getAttribute("id"));
						for (ChatObj chat : chats){
							
					%>
					<tr>
				      <th scope="row"><%=chat.getCsendid() %></th>
				      <td><%=chat.getCmsg() %></td>
				      <td><%=chat.getCtime() %></td>
				      <td><a href = "sendChat.jsp?id=<%=chat.getCsendid() %>" class = "btn btn-secondary" role = "button">채팅 보내기</a></td>
				    </tr>

				
				<% } %>
				</thead>
			</div>
			<hr>
		</div>
	</div>
	
	<jsp:include page = "../footer.jsp" />
	
	
</body>
</html>