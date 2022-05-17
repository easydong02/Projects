<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="dao.CommentDAO"%>
<%@page import="dao.CommentObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board comment</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%@ include file = "/header.jsp" %>
<% String bid = request.getParameter("id"); %>
      <form name="newProduct" class="form-horizontal"  action="cmtCheck.jsp" method="post" onsubmit="return checkForm()">
<div class="alert alert-secondary" role="alert">
			<h3 class="display-3">댓글</h3>
</div>

	<div>
		 <div class="container">
		 		<div class = "row" align = "center">
		 		<table class = "table">
     		<thead>
			  	<% %>
			  	<tr>
			      <th scope="col">댓글번호</th>
			      <th scope="col">작성자</th>
			      <th scope="col">댓글</th>
			      <th scope="col">작성시간</th>
			      
			    </tr>
     				<%
					 	ArrayList<CommentObj> cmts = (new CommentDAO()).getList(bid);
						for (CommentObj cmt : cmts){
							
					%>
			    <tr>
				      <th scope="row"><%=cmt.getBid() %></th>
				      <td><%=cmt.getWriter() %></td>
				      <td><%=cmt.getCmt() %></td>
				      <td><%=cmt.getCdate() %></td>
				</tr>
				    
			 </thead>
				<% } %>
     					</table>
     				</div>
     			</div>
     		</div>
     
     <div class="form-group  row" style="margin-left:100px;">
	            <label class="col-sm-2">글번호</label>
	            <div class="col-sm-3">
	               <input name="bid" type="text" class="form-control" value=<%=bid %> >
	            </div>
	         </div>	
     
		<div class="form-group  row"style="margin-left:100px;">
	            <label class="col-sm-2">작성자</label>
	            <div class="col-sm-3">
	               <input name="name" type="text" class="form-control" value="<%=(String)session.getAttribute("id") %>" >
	            </div>
	         </div>

			<div class="form-group  row"style="margin-left:100px;">
				<label class="col-sm-2">댓글</label>
				<div class="col-sm-3">
					<textarea name="comment" rows="5" cols="20" class="form-control" placeholder="댓글을 적어주세요"></textarea>
				</div>
			</div>
			
		
			
			<div class="form-group  row"style="margin-left:100px;">
            <div class="col-sm-offset-2 col-sm-10 ">
               <input type="submit" class="btn btn-primary " value="등록 " > 
               <input type="reset" class="btn btn-primary " value="취소 " onclick="history.back(-1);" >
            </div>
            </div>

         
         
</form>
</div>
<%@ include file = "/footer.jsp" %>

</body>
</html>