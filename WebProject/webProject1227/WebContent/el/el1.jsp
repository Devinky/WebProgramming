<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("userId", "m1");
	request.setAttribute("userPw", "1111");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현언어</title>
</head>
<body>
<h2>EL의 기본문법1</h2>
<%-- 원래는 아래처럼 쓰지만, EL을 사용 시 그 아래처럼 간단하게 사용이 가능하다 --%>
userId : <%=request.getAttribute("userId") %> <br>
userId : ${ userId } <br>
userPw: ${ userPw } <br>
userAge : ${ 100 } <br>
userName : ${ '이름' }
</body>
</html>