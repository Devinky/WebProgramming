<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logOut.jsp</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies!=null) { //쿠키가 존재하면
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getValue().equals("admin")){
					cookies[i].setMaxAge(0); //쿠키 제거
					response.addCookie(cookies[i]);
				}
			}
		}
		//response.sendRedirect("login.html");
		response.sendRedirect("cookietest.jsp");
		
	%>
</body>
</html>