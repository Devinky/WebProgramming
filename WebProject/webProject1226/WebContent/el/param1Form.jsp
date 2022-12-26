<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param1 form</title>
</head>
<body>
<h2>EL의 param1 Form</h2>
<form action="paramOk.jsp" method="post">
	아이디 : <input type="text" name="userId" id="userId" />
	비밀번호 : <input type="text" name="userPw" id="userPw" />
	<input type="submit" value="Login" />
</form>
</body>
</html>