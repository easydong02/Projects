<%@page import="dao.MemberDAO"%>
<%@page import="util.ConnectionPool"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String uid = request.getParameter("id");
	String upass = request.getParameter("password");
	String uname = request.getParameter("name");
	String ugender = request.getParameter("gender");
	
	String uphone = request.getParameter("phone");
	String uaddress = request.getParameter("address");
	String birthyy = request.getParameter("birthyy");
	String birthmm = request.getParameter("birthmm");
	String birthdd = request.getParameter("birthdd");
	String ubirth = birthyy + "-" + birthmm +"-" +birthdd;
	String email1= request.getParameter("email1");
	String email2= request.getParameter("email2");
	String uemail = email1 +email2;
	
	
	MemberDAO dao = new MemberDAO();
	int code = dao.join(uid, upass, uname, ugender, uphone, uaddress, ubirth, uemail);
	
	if (code == 1){
		response.sendRedirect("/main.jsp");
	} else {
		response.sendRedirect("joinMember.jsp");
	}


%>