<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lovey Dovey 챗</title>
<Script type = "text/javascript">
	function checkMsg() {
		if(!document.sendCaht.msg.value){
			alert("메세지를 입력하세요.")
			return false;
		}
	}
</script>
</head>
<body>	
 <jsp:include page="/header.jsp" />
	<div id= "contentainer" style="width:400px; height:600px; margin:30px 0 0 30px; ">
		<div id="chatBox">
			<form name="sendChat" action="sendCheck.jsp" method="post" onsubmit="return checkMsg()">
				<span>발신 : <%= (String)session.getAttribute("id")%></span><br>
				받는사람: <input name="crecid" type="text" value=<%=request.getParameter("id") %> maxlength="20" style="margin-left:13px;"><br><br>
				제목 <input name="title" id="title" type="text" placeholder="제목을 입력하세요" maxlength="20" style="margin-left:13px;"><br><br>
				메세지 <textarea name="msg" id="msg" placeholder="Dovey에게 보낼 메세지를 입력해주세요."></textarea><br><br>
				<input type="submit" value="전송">
				<input type="reset" value="뒤로가기" onclick="history.back(-1)">
			</form>
		</div>
	</div>
  <jsp:include page="/footer.jsp" />
</body>
</html>

<span>수신 : </span><br><br>