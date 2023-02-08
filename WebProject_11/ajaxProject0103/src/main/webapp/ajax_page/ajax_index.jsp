<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_index.css" media="all"/>
</head>
<body>
<div id="wrap">
	<div class="index">
		<div class="index-con">
			<ul>
				<li><a href="ajaxLoginView.ax">로그인</a></li>
				<li><a href="ajaxCheckedView.ax">중복체크</a></li>
				<li><a href="ajaxListView.ax">목록보기</a></li>
				<li><a href="ajaxJoinView.ax">회원가입</a></li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>