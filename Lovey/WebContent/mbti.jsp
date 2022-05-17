<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset ="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<title></title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<link rel="stylesheet" href="/css/default.css">
		<link rel="stylesheet" href="/css/main.css">
		<link rel="stylesheet" href="/css/qna.css">
		<link rel="stylesheet" href="/css/result.css">
		<link rel="stylesheet" href="/css/animation.css">
		
		<!--
		기존 폰트
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet"> -->
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
		
	</head>
	<body>
	<jsp:include page="/header.jsp" />
		<div class= "container" style="margin-top:130px;">
			<section id="main" class="mx-auto my-5 py-5 px-3">
				<h1 class="pt-5" style="">십이간지로 알아보는 연애 유형</h1><br><br>
				<div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
					<img src="/img/main.png" alt="mainImage" class="img-fluid">
				</div>
				<br>
				<p style="font-family: 'Noto Sans KR', sans-serif;">
					MBTI로 나만의 연애유형을 알아보자!!
				</p>
				<button type="button" class="btn btn-outline-danger mt-3" onclick ="js:begin()" style="font-family: 'Noto Sans KR', sans-serif;">시작하기</button>
				
				
				
			</section>
			
			
			
			<section id="qna">
				<div class="status mx-auto mt-5">
					<div class="statusBar">
					
					</div>
				</div>
				<div class="qBox my-5 py-5 mx-auto">
				
				</div>
				
				<div class="answerBox">
					
				</div>
				
	
			
			</section>
			
			
			
			
			<section id="result" class ="mx-auto my-5 py-5 px-3">
				<h1 style="font-family: 'Noto Sans KR', sans-serif;">당신의 결과는?!</h1>
				<div class="resultname">
				
				</div><br><br>
					<div id="resultImg" class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
					</div>
					<br><br>
				<div class="resultDesc">
				
				</div>
				<br><br>
				<a href="/profile/createProfile.jsp" ><button type="button" class="btn btn-outline-danger mt-3" style="font-family: 'Noto Sans KR', sans-serif;">프로필 만들기</button></a>
			
			
			</section> 
			<script src="/js/data.js" charset="utf-8"></script>
			<script src="/js/start.js" charset="utf-8"></script>
		</div>
	
	</body>
</html>