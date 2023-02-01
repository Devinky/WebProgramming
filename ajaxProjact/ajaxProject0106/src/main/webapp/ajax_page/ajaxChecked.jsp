<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHECKED</title>
<script src="<%=request.getContextPath() %>/ajax_page/js/ajaxChecked.js" defer></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_checked.css" media="all"/>
</head>
<body>
<div id="wrap">
	<div class="ajaxChecked">
		<div class="ajaxChecked-con">
			<form action="#" method="get" id="checkedForm">
			<div class="checked-form">
				<ul>
					<li><h1>중복체크</h1></li>
					<li class="class1 one"><label for="userName">USERNAME</label></li>
					<li class="class1 one">
						<input type="text" name="userName" id="userName" placeholder="입력해주세요" />
					</li>
					<li class="class1 two">
						<input class="sub" type="button" value="중복체크" id="nameCheckedBtn"/>
						<a class="sub" href="ajaxIndex.ax">HOME</a>
						<a class="sub" href="ajaxJoinView.ax">회원가입</a>
					</li>
				</ul>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>