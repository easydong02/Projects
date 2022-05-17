<%@page import="java.util.ArrayList"%>
<%@page import="dao.MatchDAO"%>
<%@page import="dao.MatchObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 Dovey 찾기</title>
</head>
<body>
	<jsp:include page = "../header.jsp" />
	
	<%
		ArrayList<MatchObj> matchList = (new MatchDAO()).getList();
	%>

<div class="alert alert-secondary" role="alert" style="text-align:center; height:300px; color:#fff; background-image:url(/img/matchList-unsplash.png); background-size:contain;">
			<h1 class="display-3" style="text-indent:-9999px;">Dovey 매칭</h1>
</div>	
		<div class = "container">
			<div class="row" align="center">
				<%
					for (MatchObj match : matchList) {if(!match.getPid().equals((String)session.getAttribute("id"))){
				%>
			<div class="col-md-4">
				<img src="/images/<%=match.getPimage() %>" style="width:100%">
				<h3><%=match.getPnick() %></h3>
				<p><%=match.getPmbti() %></p>
				<p><a href="detailProfile.jsp?pid=<%=match.getPid() %>" class="btn btn-warning" role="button" style="background-color:#ff3478; border: none; color:#fff;">프로필 보기 &raquo;</a>		
			</div>
			<%}} %>
		</div>
		<hr>
	</div>
	
	<jsp:include page = "../footer.jsp" />
</body>
</html>