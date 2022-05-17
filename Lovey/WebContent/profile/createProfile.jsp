<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dao.MemberDAO"%>
<html>
<head>
<title>프로필 생성</title>
<Script type="text/javascript">
	function checkForm() {
		if (!document.newMember.pnick.value) {
			alert("닉네임을 입력하세요")
			return false;
		}
	}

	function checkId() {
		if (err == 1) {
			alert("이미 생성한 프로필이 있습니다! 수정을 해주세요")
		} else {
			alert("사용 가능한 프로필 입니다.")
		}
	}
</Script>
</head>
<body>
	<jsp:include page="/header.jsp" />
	<div class="jumbotron" style="text-align:center; height:300px; color:#fff; background-image:url(/img/profile-unsplash.png); background-size:contain;" >
		<div class="container">
			<br><br>
			<h1 class="display-4" style="text-indent:-99999px;">PROFILE</h1>
		</div>
	</div>

	<div class="container" style="margin: 0 660px 0 660px;">
		<br><br>
		<form name="newMember" class="form-horizontal" action="createCheck.jsp"
			method="post" onsubmit="return checkForm()"
			enctype="multipart/form-data">
			<div class="form-group  row">
				<label class="col-sm-1">닉네임</label>
				<div class="col-sm-5">
					<input name="pnick" type="text" class="form-control"
						placeholder="닉네임">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-1">사진</label>
				<div class="col-sm-5" >
					<input name="pimage" type="file" class="form-control" style="font-size:12px;">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-1">MBTI</label>
				<div class="col-sm-4">
			<select name="pmbti">
                  <option value="">동물</option>
                  <option value="쥐">쥐</option>
                  <option value="소">소</option>
                  <option value="호랑이">호랑이</option>
                  <option value="토끼">토끼</option>
                  <option value="용">용</option>
                  <option value="뱀">뱀</option>
                  <option value="말">말</option>
                  <option value="양">양</option>
                  <option value="원숭이">원숭이</option>
                  <option value="닭">닭</option>
                  <option value="개">개</option>
                  <option value="돼지">돼지</option>
               </select>
               </div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-1">소개</label>
				<div class="col-sm-5">
					<textarea name="pinfo" rows=5, cols=20, class="form-control"
						placeholder="content"></textarea>
				</div>
			</div>
			<div class="form-group  row" style="margin-left:200px;">
			<br><br>
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 " style="background-color:#ff3478; border:none;">
					<input type="reset" class="btn btn-primary " value="취소 "
						onclick="reset()" style="background-color:#ff3478;border:none;">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="/footer.jsp" />
</body>
</html>