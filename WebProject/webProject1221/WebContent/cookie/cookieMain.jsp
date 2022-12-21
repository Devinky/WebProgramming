<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieMain.jsp</title>
</head>
<body>

	<%

		Cookie[] cookies = request.getCookies(); //모든 쿠키를 get
		
		for(int i=0;i<cookies.length;i++) { //모든 쿠키를 조회
			String cookieId = cookies[i].getValue();
			if(cookieId.equals("admin"))
				out.print(cookieId + "님 환영합니다" + "<br>");
		}
		
	%>
	
	<a href="logOut.jsp">로그아웃</a>
	
</body>
</html>