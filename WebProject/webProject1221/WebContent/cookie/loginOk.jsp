<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk.jsp</title>
</head>
<body>
	
	<%
		String id = request.getParameter("id"); //login.html의 id
		String pw = request.getParameter("pw");
		//입력된 id, pw를 쿠키값으로 설정
		if(id.equals("admin")&&pw.equals("1111")){
			
			Cookie cookie = new Cookie("cookieId", id); //쿠키 생성
			cookie.setMaxAge(60); //쿠키 시간
			response.addCookie(cookie); //쿠키 전송
			response.sendRedirect("cookieMain.jsp"); //cookieMain.jsp 전달(쿠키정보)
			//서블릿이나 jsp로 바로 전달
			
		}else {
			response.sendRedirect("login.html");
		}
	%>
	
</body>
</html>