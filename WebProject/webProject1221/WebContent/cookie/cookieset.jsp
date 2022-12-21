<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie set</title>
</head>
<body>

	<%
		Cookie cookie = new Cookie("admin", "1111");
		cookie.setMaxAge(60*60); //1시간
		response.addCookie(cookie); //쿠키 정보 전달
	%>
	
	<a href="cookieget.jsp">cookie get</a>
	
</body>
</html>