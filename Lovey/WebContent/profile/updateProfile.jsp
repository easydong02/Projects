<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
</head>
<body>
   <jsp:include page="/header.jsp" />
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">프로필 수정</h1>
      </div>
   </div>

   <div class="container">
      <form name="newProduct" class="form-horizontal"  action="updateCheck.jsp" method="post" onsubmit="return checkForm()" enctype = "multipart/form-data">
         
         <div class="form-group  row">
            <label class="col-sm-3">아이디</label>
            <div class="col-sm-5">
               <input name="pid" type="text" value = "<%=(String)session.getAttribute("id") %>" class="form-control" disabled>
            </div>
         </div>
         
         <div class="form-group  row">
            <label class="col-sm-3 ">닉네임</label>
            <div class="col-sm-5">
               <input name="pnick" type="text" class="form-control" placeholder="nickname" >
            </div>
         </div>


			
          <div class="form-group  row">
            <label class="col-sm-3">이미지</label>
            <div class="col-sm-5">
               <input name="pimage" type="file" class="form-control">
            </div>
         </div>

         <div class="form-group  row">
				<label class="col-sm-3">MBTI</label>
				<div class="col-sm-5">
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
            <label class="col-sm-3">정보</label>
            <div class="col-sm-5">
               <textarea name = "pinfo" rows = "5" cols = "20" class="form-control" placeholder = "about"></textarea>
            </div>
         </div>
         
         
        <div class="form-group  row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <input type="submit" class="btn btn-primary " value="수정 " > 
               <input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
            </div>
         </div>
         
         
      </form>
   </div>

<%@ include file = "/footer.jsp" %>
</body>
</html>