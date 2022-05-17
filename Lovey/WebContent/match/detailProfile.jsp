<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="alert alert-secondary" role="alert">
		<h1 class="display-3">Dovey 프로필</h1>
	</div>
	<%
	String pid = request.getParameter("pid");
	MatchObj ymatch = (new MatchDAO()).getDetail(pid);
	MatchObj mmatch = (new MatchDAO()).getDetail((String)session.getAttribute("id"));
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-ma-5">
				<%-- <img src="/images/<%=product.getPfilename()%>" style="width: 100%" /> --%>
			</div>
			<div class = "col-md-6">
				<h3><%=ymatch.getPnick() %></h3>
			<p><b>검사유형 : <%=ymatch.getPmbti() %></b></p>
			<p><b>자기소개 : <%=ymatch.getPinfo() %></b></p>
			<form action="addChat.jsp?id=<%=ymatch.getPid() %>" method="post">
				<a href="sendChat.jsp?id=<%=ymatch.getPid() %>&mbti=<%=ymatch.getPmbti() %>" class="btn btn-warning">채팅하기 &raquo;</a>
				<a href="matching.jsp?id=<%=ymatch.getPid() %>&mbti=<%=ymatch.getPmbti() %>&mmbti=<%=mmatch.getPmbti() %>" class="btn btn-warning">궁합보기 &raquo;</a>
				<a href="matchList.jsp" class="btn btn-secondary">뒤로가기&raquo;</a>
			</form>
			</div>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
	<script>
	 	function showPopup() { window.open("letterPop.jsp", "a", "width=400, height=300, left=100, top=50"); }
	</script>
</body>
</html>