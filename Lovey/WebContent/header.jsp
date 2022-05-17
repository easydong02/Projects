<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap');
</style>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<nav class="navbar navbar-light" style="background-color: #fff;">
	<div class="container-fluid" style="font-family: 'Noto Sans KR', sans-serif; font-weight:400;">
		<div  class="logoBox" style=" width:80px; height:40px; background:url(/img/loveyLogo.png) no-repeat;"><a class="navbar-brand" href="/" style="display:inline-block; width:80px;text-indent:-99999px;" >Lovey</a></div>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="color:#ff3478;"><strong>게시판</strong> </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="/board/boards.jsp"><strong>자유게시판</strong></a></li>
						<li><a class="dropdown-item" href="/board/addBoard.jsp"><strong>글작성</strong></a></li>
					</ul></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="color:#ff3478;"><strong>마이페이지</strong> </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="/member/loginMember.jsp"><strong>내 정보</strong></a></li>
						<li><a class="dropdown-item" href="/member/loginMember.jsp"><strong>로그인</strong></a></li>
						<li><a class="dropdown-item" href="/member/logout.jsp"><strong>로그아웃</strong></a></li>
						<li><a class="dropdown-item" href="/member/joinMember.jsp"><strong>회원가입</strong></a></li>
						<li><a class="dropdown-item" href="/member/withdraw.jsp"><strong>회원탈퇴</strong></a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false" style="color:#ff3478;"><strong>MBTI</strong> </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item" href="/mbti.jsp"><strong>검사</strong></a></li>
						<li><a class="dropdown-item" href="/match/matchList.jsp"><strong>채팅 보내기</strong></a></li>
						<li><a class="dropdown-item" href="/match/chatList.jsp"><strong>채팅 보기</strong></a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>