<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../header.jsp"%>

	<div class="jumbotron" style="text-align:center; height:300px; color:#fff; background-image:url(/img/board-unsplash.png); background-size:contain;">
		<div class="container">
		<br><br>
			<h1 class="display-4" style="text-indent:-9999px;">글 작성</h1>
		</div>
	</div>
	<br><br>
	<div class="container" style="margin: 0 720px 0 720px;">
		<form name="newMember" class="form-horizontal"
			action="addCheck.jsp" method="post"
			onsubmit="return checkForm()" enctype="multipart/form-data">
			<div class="form-group  row">
				<label class="col-sm-1 ">작성자</label>
				<div class="col-sm-4">
					<input name="member" type="text" class="form-control" placeholder="member">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-1 ">글 제목</label>
				<div class="col-sm-4">
					<input name="title" type="text" class="form-control" placeholder="title">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-1">글 내용</label>
				<div class="col-sm-4">
					<textarea name="content" rows=5, cols=20, class="form-control"
						placeholder="content"></textarea>
				</div>
			</div>

			<div class="form-group  row">
				<label class="col-sm-1">사진</label>
				<div class="col-sm-4">
					<input name="filename" type="file" class="form-control">
				</div>
			</div>
			<br><br>
			<div class="form-group  row" style="margin-left:150px;" >
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 " style="background-color:#ff3478; border:none; text-align:center;">
					<input type="reset" class="btn btn-primary " value="취소 " style="background-color:#ff3478; border:none; text-align:center;"
						onclick="reset()">
				</div>
			</div>
		</form>
	</div>



	<%@ include file="../footer.jsp"%>
</body>
</html>