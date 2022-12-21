<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookiedel</title>
</head>
<body>
	<%
		//쿠키 삭제
		Cookie[] cookies = request.getCookies();
	
	for(int i=0;i<cookies.length;i++){
		
		String cookieId = cookies[i].getName();
		
		if(cookieId.equals("admin")){
			out.println("name : " + cookies[i].getName() + "<br>"); //쿠키 확인
			cookies[i].setMaxAge(0); //쿠키 삭제
			response.addCookie(cookies[i]);
		}
		
	}
		
	%>
	
	<a href="cookietest.jsp">쿠키 확인</a>
	
</body>
</html>