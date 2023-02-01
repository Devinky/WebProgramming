<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="<%=request.getContextPath() %>/ajax_page/js/ajax_login.js" defer></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_login.css" media="all"/>
</head>
<body>
<div id="wrap">
	<div class="ajaxLogin">
		<div class="ajaxLogin-con">
			<form action="#" method="get" id="loginForm">
			<div class="login-form">
				<ul>
					<li><h1>로그인</h1></li>
					<li><label for="Name">NAME</label></li>
					<li><input type="text" name="userName" id="userName" /></li>
					<li><label for="Age">AGE</label></li>
					<li><input type="text" name="userAge" id="userAge" /></li>
					
					<li><input id="loginOkBtn" type="button" value="로그인" />
					<a class="sub" href="ajaxIndex.ax">HOME</a></li>
				</ul>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>