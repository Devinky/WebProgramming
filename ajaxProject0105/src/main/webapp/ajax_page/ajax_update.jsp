<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sessionId = (String)session.getAttribute("sessionId");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<script src="<%=request.getContextPath() %>/ajax_page/js/ajax_update.js" defer></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_update.css" media="all"/>
</head>
<body>
<div id="wrap">
	<div class="ajaxUpdate">
		<div class="ajaxUpdate-con">
			<form action="#" method="get" id="updateForm">
			<div class="update-form">
				<ul>
					<li><h1>회원정보수정</h1></li>
					<li><label for="Name">NAME</label></li>
					<li><input type="text" name="userName" id="userName" value="<%=sessionId %>" readonly/>
					<span><%=sessionId %></span> ※이름은 변경 불가합니다</li>
					<li><label for="Age">AGE</label></li>
					<li><input type="text" name="userAge" id="userAge" /></li>
					<li><label for="Gender">GENDER</label></li>
					<li><input type="radio" name="userGender" class="userGender" value="여성"/>여성
					<input type="radio" name="userGender" class="userGender" value="남성"/>남성
					<input type="radio" name="userGender" class="userGender" value="비밀" checked/>비밀</li>
					<li><label for="Address">ADDRESS</label></li>
					<li><input type="text" name="userAddr" id="userAddr" /></li>
					<li><input id="updateOkBtn" type="button" value="가입" />
					<input type="reset" value="reset" />
					<a class="sub" href="ajaxIndex.ax">HOME</a></li>
				</ul>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>