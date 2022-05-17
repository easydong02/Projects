<%@page import="dao.BoardObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
<%@ page import = "dao.CommentDAO" %>
<%
request.setCharacterEncoding("utf-8");
	CommentDAO dao = new CommentDAO();
	int code = dao.insert(request.getParameter("bid"),request.getParameter("name"), request.getParameter("comment"));

	if(code == 1){
		response.sendRedirect("boards.jsp");
	} else {
		response.sendRedirect("main.jsp");
	}
%>

