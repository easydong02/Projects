<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>LOVEY::로그아웃</title>
</head>    
<body>
<jsp:include page="/header.jsp" />
<div class=container style="width:500px; height:500px; margin:300px auto 0 auto;">
<div style="width:120px; height:120px; margin:0 auto; background-image:url('/photos/pink-pow.png'); backround-size: contain;">
<!--  <img src="/photos/pow-bye.png" style="im">-->
</div>

<%
	session.invalidate();
String str= "<p align = center><br>bye - bye<br><br>";
%>


<% 
str += "<a href ='loginMember.jsp'<button>로그인하기</button></a></p>";
out.print(str);
%>

</div>
<jsp:include page="/footer.jsp" />
</body>
</html>