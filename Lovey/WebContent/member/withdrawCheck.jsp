<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import ="java.sql.*"%> --%>

<%@ page import ="dao.MemberDAO" %>

<%
request.setCharacterEncoding("utf-8");


String uid= request.getParameter("id");
String upass= request.getParameter("pass");

MemberDAO dao = new MemberDAO();

if(dao.checkId(uid)==false){
	out.print("회원정보를 찾을 수 없습니다.");
	return;
}

boolean count =dao.delete(uid,upass);
if (count == true) {
	out.print("회원삭제 완료");
	session.removeAttribute("id");
} else {
	out.print("회원삭제 실패");
}



%>