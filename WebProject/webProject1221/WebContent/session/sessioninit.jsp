<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session init.jsp</title>
</head>
<body>

	<%
		//session 생성(3개)
													//name value
		session.setAttribute("admin1", "jsp1");
		session.setAttribute("adminNUM", 12345);
		session.setAttribute("adminPW", 11111);
	%>
	
	<a href="sessionget.jsp">session get</a>

</body>
</html>