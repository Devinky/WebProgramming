<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="<%=request.getContextPath() %>/ajax_page/js/ajax_join.js" defer></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_join.css" media="all"/>
</head>
<body>
<div id="wrap">
	<div class="ajaxJoin">
		<div class="ajaxJoin-con">
			<form action="#" method="get" id="joinForm">
			<div class="join-form">
				<ul>
					<li><h1>회원가입</h1></li>
					<li><label for="Name">NAME</label></li>
					<li><input type="text" name="userName" id="userName" /></li>
					<li><label for="Age">AGE</label></li>
					<li><input type="text" name="userAge" id="userAge" /></li>
					<li><label for="Gender">GENDER</label></li>
					<li><input type="radio" name="userGender" class="userGender" value="여성"/>여성
					<input type="radio" name="userGender" class="userGender" value="남성"/>남성
					<input type="radio" name="userGender" class="userGender" value="비밀" checked/>비밀</li>
					<li><label for="Address">ADDRESS</label></li>
					<li><input type="text" name="userAddr" id="userAddr" /></li>
					<li><input id="joinOkBtn" type="button" value="가입" />
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