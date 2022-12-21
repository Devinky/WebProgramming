<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk_session.jsp</title>
</head>
<body>
	<%
		String id = request.getParameter("id"); //admin
		String pw = request.getParameter("pw"); //1111
		
		if(id.equals("admin")&&pw.equals("1111")){
			//session 생성
													//name value
			session.setAttribute("sessionId", id); //접속 id가 session설정
			response.sendRedirect("sessionMain.jsp");
		}else {
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>