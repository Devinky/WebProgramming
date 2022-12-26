<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 paramOk</h2>
아이디 : ${param.userId} <br>
비밀번호 : ${param["userPw"]} <br>

아이디 : <%=request.getParameter("userId") %> <br>
비밀번호 : <%=request.getParameter("userPw") %>
</body>
</html>