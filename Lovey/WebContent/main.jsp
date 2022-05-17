<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOVEY::나의 Dovey는 어디 있을까::LOVEY</title>
</head>
<body style="overflow-y:hidden">
<%@ include file = "header.jsp" %>
  <div style="height:892px; position:absolute; font-family: 'Noto Sans KR', sans-serif;">
      <img src="/img/couple-unsplash.png" class="d-block w-100" alt="..." style="object-fit:cover; position:relative;">
      <button type="button" href="mbti.jsp" onclick="location.href='mbti.jsp'" 
      style="width:150px; height:40px; background-color:#ff3478; border:none; 
      color:#fff; position:relative; top:-180px; left:46%;">MBTI 검사하기 ></button>
       <div class="carousel-caption d-none d-md-block">
       <p style="color:#fff; margin:0;">&copy; 2021 By LOVEY</p>
      </div>
</div>
</body>
</html>