<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String uid = request.getParameter("id");
	String upass = request.getParameter("pass");

	MemberDAO dao = new MemberDAO();
	int code = dao.login(uid, upass);
	
	if (code == 1){
		response.sendRedirect("joinMember.jsp");
	} else if (code == 2){
		response.sendRedirect("loginMember.jsp");	
	} else {
		session.setAttribute("id", uid);
		response.sendRedirect("/main.jsp");
	}




%>