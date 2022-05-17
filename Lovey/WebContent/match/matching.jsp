<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>궁합결과</title>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="alert alert-secondary" role="alert">
		<h1 class="display-3">궁합결과</h1>
	</div>
<%String[] animal= {"쥐","소","호랑이","토끼","용","뱀","말","양","원숭이","닭","개","돼지"};
String yanimal= request.getParameter("mbti");
String manimal= request.getParameter("mmbti");

if(manimal.equals("쥐")){
	if(yanimal.equals("쥐")||yanimal.equals("호랑이")||yanimal.equals("원숭이")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("양")||yanimal.equals("닭")||yanimal.equals("돼지")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("소")){
	if(yanimal.equals("토끼")||yanimal.equals("용")||yanimal.equals("소")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("호랑이")||yanimal.equals("말")||yanimal.equals("양")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("호랑이")){
	if(yanimal.equals("쥐")||yanimal.equals("토끼")||yanimal.equals("닭")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("소")||yanimal.equals("용")||yanimal.equals("돼지")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("토끼")){
	if(yanimal.equals("소")||yanimal.equals("말")||yanimal.equals("개")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("쥐")||yanimal.equals("뱀")||yanimal.equals("원숭이")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("용")){
	if(yanimal.equals("뱀")||yanimal.equals("원숭이")||yanimal.equals("닭")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("호랑이")||yanimal.equals("개")||yanimal.equals("돼지")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("뱀")){
	if(yanimal.equals("용")||yanimal.equals("소")||yanimal.equals("양")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("토끼")||yanimal.equals("쥐")||yanimal.equals("원숭이")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("말")){
	if(yanimal.equals("원숭이")||yanimal.equals("토끼")||yanimal.equals("개")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("소")||yanimal.equals("양")||yanimal.equals("용")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("양")){
	if(yanimal.equals("돼지")||yanimal.equals("뱀")||yanimal.equals("양")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("쥐")||yanimal.equals("소")||yanimal.equals("닭")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("원숭이")){
	if(yanimal.equals("쥐")||yanimal.equals("말")||yanimal.equals("닭")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("토끼")||yanimal.equals("뱀")||yanimal.equals("개")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("닭")){
	if(yanimal.equals("원숭이")||yanimal.equals("호랑이")||yanimal.equals("용")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("쥐")||yanimal.equals("양")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("개")){
	if(yanimal.equals("돼지")||yanimal.equals("토끼")||yanimal.equals("말")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("용")||yanimal.equals("원숭이")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}else if(manimal.equals("돼지")){
	if(yanimal.equals("양")||yanimal.equals("개")){
		out.print("좋은 궁합입니다.");
	}else if(yanimal.equals("쥐")||yanimal.equals("용")){
		out.print("사랑이 이루어지기 위해선 많은 노력이 필요합니다.");
		
	}else{
		
		out.print("두 분의 미래는 서로가 만들어가면 됩니다.");
	}
}


%>
<br>
<input type="button" value="뒤로가기" class="btn btn-warning" onclick="history.back(-1)">
</body>
</html>