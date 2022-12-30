<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<script src="<%=request.getContextPath()%> /model2/js/joinOk.js" defer></script>
</head>
<body>
<%@include file="header.jsp" %>
<br><br>

<form action="joinOk.do" method="post" id="joinForm">

	ID : <input type="text" name="userId" id="userId" /> <br>
	Password : <input type="password" name="userPw" id="userPw" /> <br>
	Name : <input type="text" name="userName" id="userName" /> <br><br>
<!-- <input type="submit" value="회원가입" /> -->
	<input type="button" value="회원가입" id="joinOkBtn" />
	
</form>
</body>
</html>

