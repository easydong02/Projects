<%@page import="dao.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDAO"%>
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
		<br><br><br><br>	
		<div class = "container">
			<h1 class = "display-3">글 목록</h1>
		</div>
		
		<div>
			<div class = "container">
			
				<div class = "row" align = "center">
				<table class="table">
			  <thead>
			  	<tr>
			      <th scope="col">작성자</th>
			      <th scope="col">내용</th>
			      <th scope="col">작성시간</th>
			      <th scope="col">이미지</th>
			      <th scope="col">댓글 달기</th>
			      
			    </tr>

					<%
					 	ArrayList<BoardObj> boards = (new BoardDAO()).getList();
						for (BoardObj board : boards){
							
					%>
					<tr>
				      <th scope="row"><%=board.getBmember() %></th>
				      <td><%=board.getBcontent() %></td>
				      <td><%=board.getBdate() %></td>
				      <td><img src="/photos/<%=board.getBfilename() %>" alt="" width="50" height="50"/></td>
				      <td><a href = "cmtBoard.jsp?id=<%=board.getBid() %>" class = "btn btn-secondary" role = "button">댓글 달기</a></td>
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