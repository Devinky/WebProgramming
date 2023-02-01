<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String sessionId = (String)session.getAttribute("sessionId");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/ajax_page/css/ajax_index.css" media="all"/>
<%
	if(sessionId!=null){
		//로그인 상태일 때만 ajax_logout.js 실행
%>
	<script src="<%=request.getContextPath() %>/ajax_page/js/ajax_logout.js" defer></script>
<%
	}
%>		
</head>
<body>
<div id="wrap">
	<div class="index">
		<div class="index-con">
		<%
		if(sessionId!=null){
		%>
		<span class="loginSpan"><%=sessionId %>님 환영합니다</span>
			<ul>
				<li><a href="#" id="logoutBtn">로그아웃</a></li>
				<li><a href="ajaxUpdateView.ax">정보수정</a></li>
				<li><a href="#">회원탈퇴</a></li>
				<li><a href="ajaxListView.ax">목록보기</a></li>  
			</ul>
		<%		
		}else{
		%>
		<span class="logoutSpan"></span>
			<ul>	
				<li><a href="ajaxLoginView.ax">로그인</a></li>
				<li><a href="ajaxCheckedView.ax">중복체크</a></li>
				<li><a href="ajaxJoinView.ax">회원가입</a></li>
				<li><a href="ajaxListView.ax">목록보기</a></li>
			</ul>
		<%	
		}
		%>			
		</div>
	</div>
</div>
</body>
</html>