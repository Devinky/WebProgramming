<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<script src="<%=request.getContextPath() %>/model2/js/loginOk.js" defer></script>
</head>
<body>
<%@include file="header.jsp" %>
<form action="loginOk.do" method="post" id="loginForm">
	아이디 : <input type="text" name="userId" id="userId" /> <br>
	비밀번호 : <input type="password" name="userPw" id="userPw" /> <br>
	<input type="submit" value="로그인" id="loginOk"/>
</form>
</body>
</html>

