<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
</head>
<body>
<%@include file="header.jsp" %>
<br><br>
<form action="joinOk.do" method="post">
	ID : <input type="text" name="userId" id="userId" /> <br>
	Password : <input type="password" name="userPw" id="userPw" /> <br>
	Name : <input type="text" name="userName" id="userName" />
	<input type="submit" value="회원가입" />
</form>
</body>
</html>

